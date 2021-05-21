class Task {
  final String subject;
  final String description;
  final String status;
  final String assignee;
  final String reporter;
  final int uniqueId;

  factory Task.fromMap(Map data) {
    return Task(
        uniqueId: data['unique_id'],
        subject: data['subject'],
        status: data['status'],
        reporter: data['reporter'],
        description: data['description'],
        assignee: data['assignee']);
  }

  Task(
      {this.subject = "",
      this.description = "",
      this.status = "open",
      this.assignee = "",
      this.reporter = "",
      this.uniqueId = -1});

  Map<String, dynamic> toMap() => {
        "subject": subject,
        "description": description,
        "status": status,
        "reporter": reporter,
        "assignee": assignee,
        "unique_id": uniqueId
      };

  Task copyWith(
      {String subject,
      String description,
      String status,
      String assignee,
      String reporter}) {
    return Task(
        assignee: assignee ?? this.assignee,
        description: description ?? this.description,
        reporter: reporter ?? this.reporter,
        status: status ?? this.status,
        subject: subject ?? this.subject,
        uniqueId: this.uniqueId);
  }
}
