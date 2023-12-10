# Today_remote
Tour of the app

Today is developed by following Apple's **UIKit** module. This project serves as a practical exercise to deepen my knowledge and skills in UIKit framework.

Today is a productivity app for iOS that presents daily reminders. The goal of Today is not only to help users focus on their tasks for the day, but also to use visual design and animation to present a muted, calm interface.
Take a closer look at the Today app:

## <span style="font-size:larger;">Reminder list</span>
The main screen of the app displays a list of a user’s reminders. The segmented control in the navigation bar lets users filter reminders by due date categories: Today, Future, or All. The user can complete reminders by tapping a done button. The progress circle—the large circle above the reminder list—fills in as the user completes reminders. Tapping the Add button (+) in the navigation bar creates a new reminder.

<img width="200" alt="Screenshot 2023-12-10 at 20 32 55" src="https://github.com/yugasamuel/Today_remote/assets/128349047/e126fac7-ce7a-4abc-ad68-d02535cd235c">

## <span style="font-size:larger;">Reminder view and editing modes</span>
The detail screen shows more information about a reminder, including its title, due date, time due, and additional notes. In view mode, as shown here, the reminder details appear in rows with icons. The user can alter the reminder’s details by tapping the Edit button.
In editing mode, a visually distinct view displays editable fields and pickers to let the user change details. You’ll reuse this edit view to display the Add Reminder screen.

<img width="200" alt="Screenshot 2023-12-10 at 20 33 13" src="https://github.com/yugasamuel/Today_remote/assets/128349047/b98a2afd-fad0-4e4e-9648-2f94b5f57982">

## <span style="font-size:larger;">Add reminder screen</span>
The Add Reminder screen appears when the user taps the Add button (+) in the reminder list. This screen shares cells with the edit view, but presents modally instead of pushing onto the navigation stack.

<img width="200" alt="Screenshot 2023-12-10 at 20 34 01" src="https://github.com/yugasamuel/Today_remote/assets/128349047/d9de43a9-d612-4e3d-8291-193b281131c5">



Link to module: https://developer.apple.com/tutorials/app-dev-training/getting-started-with-today
