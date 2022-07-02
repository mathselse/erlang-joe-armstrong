-module afile_client.
-export [ls/1, read_file/2].

ls (Server) -> 
    Server ! {self(), list_dir},
    receive
        {Server, FileList} -> FileList
    end.

read_file(Server, File) ->
    Server ! {self(),{read_file, File}},
    receive
        {Server, Content} -> Content
    end.