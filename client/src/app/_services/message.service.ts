import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { environment } from 'src/environments/environment';
import { Message } from '../_models/Message';
import { MessageParams } from '../_models/MessageParams';
import { getPaginatedResult, getPaginationHeader } from './paginationHelper';

@Injectable({
  providedIn: 'root',
})
export class MessageService {
  baseUrl = environment.apiUrl;
  messageParams: MessageParams;

  constructor(private http: HttpClient) {
    this.messageParams = new MessageParams();
  }

  getMessageParams() {
    return this.messageParams;
  }

  setMessageParams(params: MessageParams) {
    this.messageParams = params;
  }

  resetMessageParams() {
    this.messageParams = new MessageParams();
    return this.messageParams;
  }

  getMessages(messageParams: MessageParams) {
    let params = getPaginationHeader(
      messageParams.pageNumber,
      messageParams.pageSize
    );
    params = params.append('Container', messageParams.container);

    return getPaginatedResult<Message[]>(
      this.baseUrl + 'messages',
      params,
      this.http
    );
  }

  getMessageThread(username: string) {
    return this.http.get<Message[]>(
      this.baseUrl + 'messages/thread/' + username
    );
  }

  sendMessage(username: string, content: string) {
    return this.http.post<Message>(this.baseUrl + 'messages', {
      recipientUsername: username,
      content,
    });
  }

  deleteMessage(id: number) {
    return this.http.delete(this.baseUrl + 'messages/' + id);
  }
}
