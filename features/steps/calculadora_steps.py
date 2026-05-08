from behave import given, when, then
from selenium import webdriver
from selenium.webdriver.common.by import By
import os

file_path = "file://" + os.path.abspath("index.html")

@given('que eu acessei a interface da calculadora no navegador')
def step_impl(context):
    context.driver = webdriver.Chrome()
    context.driver.get(file_path)

@when('eu clico no botão "{botao}"')
def step_impl(context, botao):
    xpath = f"//button[text()='{botao}']"
    context.driver.find_element(By.XPATH, xpath).click()

@then('o visor deve exibir "{resultado_esperado}"')
def step_impl(context, resultado_esperado):
    display = context.driver.find_element(By.ID, "display")
    valor_atual = display.get_attribute("value")
    assert valor_atual == resultado_esperado, f"Esperado {resultado_esperado}, mas obteve {valor_atual}"
    context.driver.quit()

@then('o visor deve estar vazio')
def step_impl(context):
    display = context.driver.find_element(By.ID, "display")
    assert display.get_attribute("value") == "", "O visor não está vazio"
    context.driver.quit()