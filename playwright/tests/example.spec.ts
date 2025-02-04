import { test, expect } from "@playwright/test";
import config from "../config";

console.log(test);
test.describe("Hidden Buttons", () => {
  test("opens the app", async ({ page }) => {
    await page.goto("https://tam.retool.dev/auth/login");
    await page.waitForSelector('input[placeholder="name@company.com"]', { timeout: 30000 });
    await page
      .getByPlaceholder("name@company.com")
      .fill(config.email, { timeout: 10000 });
    await page
      .getByPlaceholder("Password")
      .fill(config.password,  { timeout: 10000 });
    
    await page.getByText(/^Sign in$/).click();
    await page.waitForSelector('text=Resources', { timeout: 30000 });
    await page.getByText("Resources").click();
    await page.waitForTimeout(10000);
    
    await page.goto(
      "https://tam.retool.dev/apps/7f0b3ae8-9215-11ef-aaf7-ef83bb0d97b1/Hidden%20Buttons", { timeout: 10000 }
    );
    await page.waitForTimeout(10000);

    const adminButton = page.getByTestId("RetoolWidget:ButtonWidget2");
    // const viewerButton = page.getByTestId("RetoolWidget:ButtonWidget2");

    // await expect(viewerButton).toContainText("Only viewers can see this!");
    await expect(adminButton).not.toContainText("Only admins can see this!");
    

  });
});