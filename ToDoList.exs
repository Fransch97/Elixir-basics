defmodule ToDoList do
  def add_task(list, task) do
    id = length(list) + 1;
    list ++ [{id, task}];
  end

  def show_tasks(list) do
    if length(list) > 0 do
      IO.puts("\nYou have #{length(list)} current tasks:")
      Enum.each(list, fn {id, task} -> IO.puts("#{id}. #{task}") end);
    else
      IO.puts("\n No tasks for now...")
    end
  end

  def remove_task(list, id) do
    id = if is_binary(id), do: String.to_integer(id), else: id

    if Enum.any?(list, fn {task_id, _} -> task_id == id end) do
      list
      |> Enum.reject(list, fn {task_id, _} -> task_id == id end)
      |> reserids()
    else
      IO.puts("Task con ID #{id} non trovato.")
      list
    end
  end

  def start do
    IO.puts("\nWelcome to ToDoListerando!")
    loop([]);
  end

  defp loop(list) do
    IO.puts("\nWhat do you want to do?: ");
    IO.puts("1. Add a new task");
    IO.puts("2. Read the list");
    IO.puts("3. Remove a task");
    IO.puts("4. Stop this app");

    option = IO.gets("\nChoose tiping the number of your choise (1-4): ") |> String.trim()

    case option do
      "1" ->
        task = IO.gets("\nWrite the task: ") |> String.trim();
        list = add_task(list, task);
        loop(list);

      "2" ->
        show_tasks(list);
        loop(list);

      "3" ->
        id = IO.gets("\nWrite the number of the task you want to remove: ") |> String.trim();
        list = remove_task(list, id);
        loop(list)

      "4" ->
        IO.puts("Thanks for using this app. \ncYa next time!")

      _ ->
        IO.puts("\nInvalid option. Please try again.")
        loop(list)
    end
  end

  defp reset_ids(list) do
    Enum.with_index(list, 1)
    |> Enum.map(fn {_, index} = {_, task} -> {index, task} end)
  end

end
