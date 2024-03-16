/*
 * Copyright (c) 2024 Rémi Boivin
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program. If not, see <https://www.gnu.org/licenses/>.
 */

#include <gtest/gtest.h>

#include "../include/cpp_pubsub/publisher.h"
// #include <memory>


class MinimalPublisherTest : public ::testing::Test
{
protected:
  void SetUp() override
  {
    // Setup code here. This will run before each test.
    // For example, you might want to create a new MinimalPublisher instance.
    publisher = std::make_shared<MinimalPublisher>();
  }

  void TearDown() override
  {
    // Teardown code here. This will run after each test.
    // Clean up any resources allocated in SetUp.
  }

  std::shared_ptr<MinimalPublisher> publisher;
};

TEST_F(MinimalPublisherTest, BasicAssertion) {
  // Use the publisher instance.
  // Perform tests here.
  ASSERT_TRUE(publisher != nullptr);  // Example assertion
  // You can access publisher directly here.
}

int main(int argc, char ** argv)
{
  rclcpp::init(argc, argv);  // Initialize ROS 2
  ::testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
