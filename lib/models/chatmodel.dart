class WhatsAppDetails {
  String name;
  String message;
  String time;
  MessageStatus status;
  WhatsAppDetails(this.name, this.message, this.time, this.status);
}

enum MessageStatus { Delivered, Received, Seen }