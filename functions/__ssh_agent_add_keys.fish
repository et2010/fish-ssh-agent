function __ssh_agent_add_keys -d "add all ssh keys"
    for key in ~/.ssh/id_*
        set extension (string split '.' -- $key)[-1]
        if not test "$extension" = "pub"
            ssh-add $key 2>/dev/null
        end
    end
end
