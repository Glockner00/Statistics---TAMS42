import numpy as np
import matplotlib.pyplot as plt

# Define the function for the normal distribution curve
def normal_curve(x):
    return (1 / np.sqrt(2 * np.pi)) * np.exp(-x**2 / 2)

# Define the x range for the rectangle and the curve
x_values = np.linspace(0, 0.5, 400)
y_values = normal_curve(x_values)

# Plot the rectangle
plt.figure(figsize=(6, 6))
plt.plot([0, 0.5, 0.5, 0, 0], [0, 0, 1, 1, 0], 'b-', label="Rectangle")

# Plot the normal curve
plt.plot(x_values, y_values, 'r-', label="Normal Curve")

# Fill the area under the curve
plt.fill_between(x_values, y_values, color='red', alpha=0.3, label="Shaded Area (Region I)")

# Set labels and limits
plt.xlim(0, 0.5)
plt.ylim(0, 1)
plt.xlabel('x')
plt.ylabel('y')

# Add a legend
plt.legend()

# Title of the plot
plt.title("Monte Carlo Method: Rectangle and Region I under Normal Curve")

# Show the plot
plt.grid(True)
plt.show()

