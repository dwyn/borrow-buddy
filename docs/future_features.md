# Future Features

## Display

- Fix navbar expand display
- Make web app fully responsive and accessible
  - Remove table display for breakpoints small and under
- TODO: Change "Back" button verbiage

## Functioning

- Make it easier to return an item
  - Use [Enums](https://api.rubyonrails.org/v5.2.3/classes/ActiveRecord/Enum.html) to accomplish this
- Add a `quantity` attribute to `Item`
  - Don't allow an item to be loaned out when its quantity is 0
- Sanitize input parameters
  - Format phone numbers
- Look more into whenever gem and cron jobs
  - Make it run in development environment

## Best Practices

- Add a concerns folder
  - Move `Item` and `Borrower` scopes into concerns
- Edit new loan forms
  - Do I want to include default attributes on the new loan form?
