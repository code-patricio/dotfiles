require('mkdnflow').init({
     -- Config goes here; leave blank for defaults
perspective = {
        priority = 'root',
        root_tell = 'index.md',
        fallback = 'current'
    },

links = {
        transform_explicit = function(text)
            text = text:gsub(" ", "-")
            text = text:lower()
            return(text)
        end
    },



 })
