// ir2z_construct_a_dat.swift

import Foundation

// Define a struct to hold dashboard data
struct DashboardData {
    let title: String
    let sections: [Section]
}

struct Section {
    let title: String
    let metrics: [Metric]
}

struct Metric {
    let label: String
    let value: String
}

// Function to fetch data from a hypothetical API
func fetchData() -> DashboardData {
    // Replace this with your actual API fetching logic
    return DashboardData(title: "My Dashboard",
                         sections: [
                            Section(title: "System Metrics",
                                    metrics: [
                                        Metric(label: "CPU Usage", value: "25%"),
                                        Metric(label: "Memory Usage", value: "50%"),
                                    ]),
                            Section(title: "App Metrics",
                                    metrics: [
                                        Metric(label: "Active Users", value: "1000"),
                                        Metric(label: "Revenue", value: "$100.00"),
                                    ]),
                         ])
}

// Function to display the dashboard
func displayDashboard(data: DashboardData) {
    print("Dashboard: \(data.title)\n")
    
    for section in data.sections {
        print("  \(section.title):")
        for metric in section.metrics {
            print("    \(metric.label): \(metric.value)")
        }
        print()
    }
}

// Main function to construct and display the dashboard
func main() {
    let data = fetchData()
    displayDashboard(data: data)
}

main()