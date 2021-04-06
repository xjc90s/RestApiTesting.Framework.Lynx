Feature: DeletePosts
As a non-authenticated user,
I want the ability to delete a post.

  Background: 
    Given I have a client "nonAuthenticatedHttpClient1"
  
  @AcceptanceCriteria
  Scenario: A non-authenticated user successfully deletes a post
     When I send a "Delete" request to "str /posts/1" using client "nonAuthenticatedHttpClient1" and get the response "deletePostsResponse1"
      And I get the content "deletePostsResponse1Body" of the response "key deletePostsResponse1"
     Then the response "deletePostsResponse1" should have the status code "OK"
      And the model "deletePostsResponse1Body" should match the following values:
      | Field | Value | 
  
  @NegativePath
  Scenario: A non-authenticated user attempts to delete a post with nonexistent id
     When I send a "Delete" request to "str /posts/101" using client "nonAuthenticatedHttpClient1" and get the response "deletePostsResponse1"
      And I get the content "deletePostsResponse1Body" of the response "key deletePostsResponse1"
     Then the response "deletePostsResponse1" should have the status code "OK"
      And the model "deletePostsResponse1Body" should match the following values:
      | Field | Value | 