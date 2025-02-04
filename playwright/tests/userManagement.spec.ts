import { test, expect } from "@playwright/test";
import config from "../../config";

console.log(test);
test.describe("User Management app", () => {
  test("opens the app", async ({ page }) => {
    await page.goto("https://tam.retool.dev/auth/login");
    await page.waitForSelector('input[placeholder="name@company.com"]', { timeout: 50000 });
    await page
      .getByPlaceholder("name@company.com")
      .fill(config.email, { timeout: 10000 });
    await page
      .getByPlaceholder("Password")
      .fill(config.password,  { timeout: 10000 });
    
    await page.getByText(/^Sign in$/).click();
    await page.waitForSelector('text=Resources', { timeout: 50000 });
    await page.getByText("Resources").click();
    await page.waitForTimeout(10000);
    
    await page.goto(
      "https://tam.retool.dev/apps/b8c1eb8c-cd21-11ef-bc45-8393403a9a20/WebDrivert%20tests/User%20management%20app/defaultPage", { timeout: 10000 }
    );
    await page.waitForTimeout(10000);

    await page.getByPlaceholder(/Search by name/).fill("eva");
    const gridContainer = page.getByTestId("RetoolGrid:listView1");

    await expect(gridContainer.getByRole("heading")).toHaveCount(2);
    await expect(gridContainer).toContainText("Eva Noyce");
    await expect(gridContainer).toContainText("Eva Lu Ator");

  });
});