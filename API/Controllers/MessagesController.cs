using System.Collections.Generic;
using System.Threading.Tasks;
using API.DTOs;
using API.Entities;
using API.Extensions;
using API.Helpers;
using API.Interfaces;
using AutoMapper;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace API.Controllers
{
    [Authorize]
    public class MessagesController : BaseApiController
    {
        private readonly IMapper _mapper;

        private readonly IUnityOfWork _unityOfWork;

        public MessagesController(IUnityOfWork unityOfWork, IMapper mapper)
        {
            _unityOfWork = unityOfWork;
            _mapper = mapper;
        }

        [HttpPost]
        public async Task<ActionResult<MessageDto>> CreateMessage(CreateMessageDto createMessageDto)
        {
            var username = User.GetUsername();

            if (username.Equals(createMessageDto.RecipientUsername.ToLower()))
                return BadRequest("You cannot send messages to yourself");

            var sender = await _unityOfWork.UserRepository.GetUserByUserNameAsync(username);
            var recipient = await _unityOfWork.UserRepository.GetUserByUserNameAsync(createMessageDto.RecipientUsername);

            if (recipient == null)
                return NotFound();

            var message = new Message
            {
                Sender = sender,
                Recipient = recipient,
                SenderUsername = sender.UserName,
                RecipientUsername = recipient.UserName,
                Content = createMessageDto.Content
            };

            _unityOfWork.MessageRepository.AddMessage(message);

            if (await _unityOfWork.Complete())
                return Ok(_mapper.Map<MessageDto>(message));

            return BadRequest("Failed to send message");
        }

        [HttpGet]
        public async Task<ActionResult<IEnumerable<MessageDto>>> GetMessagesForUser([FromQuery] MessageParams messageParams)
        {
            messageParams.Username = User.GetUsername();

            var messages = await _unityOfWork.MessageRepository.GetMessagesForUser(messageParams);

            Response.AddPaginationHeader(messages.CurrentPage, messages.PageSize, messages.TotalCount, messages.TotalPages);

            return messages;
        }

        [HttpDelete("{id}")]
        public async Task<ActionResult> DeleteMessage(int id)
        {
            var username = User.GetUsername();

            var message = await _unityOfWork.MessageRepository.GetMessage(id);

            if (!message.Sender.UserName.Equals(username) && !message.Recipient.UserName.Equals(username))
                return Unauthorized();

            if (message.Sender.UserName.Equals(username))
                message.SenderDeleted = true;

            if (message.Recipient.UserName.Equals(username))
                message.RecipientDeleted = true;

            // Not delete the messages
            // if (message.SenderDeleted && message.RecipientDeleted)
            //     _unityOfWork.MessageRepository.DeleteMessage(message);

            if (await _unityOfWork.Complete())
                return Ok();

            return BadRequest("Problem deleting the message");
        }

    }
}