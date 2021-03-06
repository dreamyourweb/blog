Feature: Creating a blogpost 
  As a blogger
  I create a new blogpost
  In order to interact with the world

Scenario: Posting blogpost
  Given I am a visitor
  And I am on the new post page
  When I create a new post
  Then the post is published

Scenario: Reading blogpost excerpt
  Given I am a visitor
  And a blogpost exists
  When I go to the blog dashboard
  Then I should see an excerpt
  
Scenario: Reading complete blogpost
  Given I am a visitor
  And a blogpost exists
  When I am on the blog dashboard
  And I follow "Read more" 
  Then I should be on this post page
 
#Scenario: Add hyperlink and h1 to post
#  Given I am a visitor
#  And I am on the new post page
#  When I create a new post
#  And I insert a hyperlink 
#  And I insert 'your mother' into h1 tags
#  And I create a new post
#  Then the post is published
#  And should see a hyperlink in the blog post
#  And I should see 'your mother' in h1 tags on the blog post

#Scenario: Add unique URL to blog post
#  Given I am a visitor
#  When I create a new post
#  And the id is replaced by 'een_unieke_blogpost'
#  Then the blog post is created
#  And the unique URL is '/blog/post/een_unieke_blogpost'

Scenario: Adding metatags and metatitel
  Given I am a visitor
  And I am on the new post page
  When I fill in 'metadescription' with 'nieuws'
  And I fill in 'titel' with 'titel van de post'
  Then the blog post is created
  And the head of the new blog post contains 'nieuws'
  And the head of the new blog post contains 'hier komt de metatitel'

#Scenario: Adding metatags
#  Given I am a visitor 
#  When I create a new post
#  And I add metatags
#  Then the post is published

# the article is saved as a draft

#Scenario: Helping with posting
#  Given I am a visitor
#  When I create a new post
#  Then I can see how many words I have typed
#  And I can see how many links I have added to the text

#Scenario: Adding Metatags
#  Given I am creating an new post
#  When I want to add metadata to the new post
#  Then I add metadata
#  And I create an alternative URL

#Scenario: Browsing the archive as admin
#  Given I am a admin
#  When I want to edit a published article
#  Or continue a draft 
#  Then I browse the articles
#  And change the article 

#Scenario: after_create validations
#  Given...
  
