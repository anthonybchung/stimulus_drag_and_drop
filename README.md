# README

This exercise starts off with a 1-dimensional drag and drop function.
Thereafter a 2-dimensional drag and drop function.

## One-Dimensional Drag and Drop

![create-task](https://github.com/anthonybchung/stimulus_drag_and_drop/assets/99620815/cdf06814-f2e0-4d78-a0d1-e6261f4127a6)
![edit-task](https://github.com/anthonybchung/stimulus_drag_and_drop/assets/99620815/f866d309-76c0-4fde-a154-1020b375925e)

Implement ***Turbo-frame*** to give load or reload components instead of the whole page. This will give it a Single Page
Application feel.

Stimulus will be used to submit the new position of the card to the backend after drag ends.

## Step One: Create Model and Populate database with seeds.rb

| Attribute   | Type    |
|:------------|:--------|
| name        | string  |
| description | text    |
| position    | integer |

This exercise focuses on drag and drag, thus we will not look into validations.

## Step Two: FontEnd

- Create
- Read
- Update
- Delete

Each will be created separately, in the end it will be assembled using turbo-frames

### index.html.erb

1. List all tasks.
2. Make it draggable and submit the task new position.
    - Chosen Task_id and Dropped Task_id will be submitted to the controller. 
    - Create a controller called **drags** because tasks controller will be left for CRUD.

## Step Three: Business Logic to update the data.

There are several scenario in moving tasks position.

Assume we have 8 elements.

| Position | Name |
|:--------:|:----:|
|    1     |  A   |
|    2     |  B   |
|    3     |  C   |
|    4     |  D   |
|    5     |  E   |
|    6     |  F   |
|    7     |  G   |
|    8     |  H   |

### Moving B to position 5.

| Position |  Name   |    Moved     |
|:--------:|:-------:|:------------:|
|    1     |    A    |              |
|   xxx    |   xxx   |     xxx      |
|    3     |    C    |              |
|    4     |    D    |              |
|    5     |    E    |              |
| ***5***  | ***B*** | **&#x2193;** |
|    6     |    F    |              |
|    7     |    G    |              |
|    8     |    H    |              |

Moved

| Position | Name |  Moved   |
|:--------:|:----:|:--------:|
|    1     |  A   |    -     |
|    2     |  C   | &#x2191; |
|    3     |  D   | &#x2191; |
|    4     |  E   | &#x2191; |
|    5     |  B   | &#x2193; |
|    6     |  F   |    -     |
|    7     |  G   |    -     |
|    8     |  H   |    -     |

