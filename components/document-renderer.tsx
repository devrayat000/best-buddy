import { DocumentRendererProps } from "@keystone-6/document-renderer";
import { Link } from "expo-router";
import { View } from "react-native";
import { Divider, List, Text } from "react-native-paper";

export const renderer: DocumentRendererProps["renderers"] = {
  inline: {
    //   @ts-ignore
    link: Link,
    bold: ({ children }) => (
      <Text style={{ fontWeight: "bold" }}>{children}</Text>
    ),
    italic: ({ children }) => (
      <Text style={{ fontStyle: "italic" }}>{children}</Text>
    ),
  },
  block: {
    block: ({ children }) => <View>{children}</View>,
    paragraph: ({ children, textAlign }) => (
      // @ts-ignore
      <Text style={{ textAlign }}>{children}</Text>
    ),
    heading: ({ children, level, textAlign }) => (
      // @ts-ignore
      <Headline style={{ textAlign }}>{children}</Headline>
    ),
    divider: Divider,
    list(props) {
      return (
        <List.Section>
          {props.children.map((child, index) => (
            <List.Item
              key={index}
              title={child.props.children}
              left={(props) => <List.Icon {...props} icon="circle" />}
            />
          ))}
        </List.Section>
      );
    },
  },
};
