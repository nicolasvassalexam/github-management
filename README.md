# myexam
Depuis la manip de terraform cloud et l'ajout du token, j'ai des problèmes lors du terraform apply, alors que ça marchait avant:

vocstartsoft:~/environment/myexam/github-management (main) $ terraform apply
module.repository.github_repository.some_repo: Refreshing state... [id=mysuperapp]
module.repository.github_team.some_team: Refreshing state... [id=4785956]
module.repository.github_membership.add_a_user: Refreshing state... [id=nicolasvassalexam:dylan-picquendar]

Error: This resource can only be used in the context of an organization, "nicolasvassalexam" is a user.

Error: This resource can only be used in the context of an organization, "nicolasvassalexam" is a user.

Error: GET https://api.github.com/repos/nicolasvassalexam/mysuperapp: 401 Bad credentials []

Releasing state lock. This may take a few moments...

j'ai les mêmes erreurs lors du commit de mon workflow....
