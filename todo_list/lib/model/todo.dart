class ToDo{
  String? id;
  String? todoText;
  bool isDone;

  ToDo(
    {
      required id,required todoText,this.isDone=false
    }
  );
  static List<ToDo> todoList(){
    return [
        ToDo(id: '01', todoText: 'Morning Excercise', isDone: true),
        ToDo(id: '02', todoText: 'Bye Grocesis', isDone: true),
        ToDo(id: '03', todoText: 'Check mail',),
        ToDo(id: '04', todoText: 'Read Book',),
        ToDo(id: '05', todoText: 'Evening walking',),
        ToDo(id: '06', todoText: 'cooking',),

    ];
    }
  }