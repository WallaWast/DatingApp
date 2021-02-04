import { Component, OnInit } from '@angular/core';
import { Message } from '../_models/Message';
import { MessageParams } from '../_models/MessageParams';
import { Pagination } from '../_models/pagination';
import { MessageService } from '../_services/message.service';

@Component({
  selector: 'app-messages',
  templateUrl: './messages.component.html',
  styleUrls: ['./messages.component.css'],
})
export class MessagesComponent implements OnInit {
  messages: Message[] = [];
  pagination: Pagination;
  messageParams: MessageParams;
  maxSize = 5; // Max size of the Paginator
  loading = false;

  constructor(private messageService: MessageService) {
    this.messageParams = this.messageService.getMessageParams();
  }

  ngOnInit(): void {
    this.loadMessages();
  }

  loadMessages() {
    this.loading = true;
    this.messageService
      .getMessages(this.messageParams)
      .subscribe((response) => {
        this.messages = response.result;
        this.pagination = response.pagination;
        this.loading = false;
      });
  }

  deleteMessage(id: number) {
    this.messageService.deleteMessage(id).subscribe(() => {
      this.messages.splice(
        this.messages.findIndex((m) => m.id === id),
        1
      );
    });
  }

  pageChanged(event: any) {
    this.messageParams.pageNumber = event.page;
    this.messageService.setMessageParams(this.messageParams);
    this.loadMessages();
  }
}
