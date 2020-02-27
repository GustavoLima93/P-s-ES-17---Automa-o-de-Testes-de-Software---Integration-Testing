Feature: Testes da impacta

  Scenario Outline: Buscar todos os usuários

    Given user would like to see all users number <id>
    When user access user page
    Then user should see "<result>" message

    Examples:
      | id | result    |
      | 22 | sucess    |
      | 1  | not found |

  Scenario:  Gravar um usuário
  #post
    Given user would like to save a user
    And user informs login with value equal "gustavo"
    And user informs age with value equal "26"
    And user informs full_name with value equal "Gusatvo Henrique"
    And user informs email with value equal "gustavo@impacta.com.br"
