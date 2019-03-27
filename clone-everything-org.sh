curl 
  -H "Authorization: token ((TOKEN))" 
  -s https://api.github.com/orgs/((ORG))/repos\?per_page\=200 | 
perl 
  -ne 'print "$1\n" if (/"clone_url": "([^"]+)/)' | 
xargs -n 1 git clone
