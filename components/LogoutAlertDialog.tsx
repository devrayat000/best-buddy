import {
  AlertDialog,
  Text,
  Heading,
  Icon,
  Button,
  CloseIcon,
  AlertDialogBackdrop,
  AlertDialogContent,
  ButtonText,
  AlertDialogHeader,
  AlertDialogCloseButton,
  AlertDialogBody,
  AlertDialogFooter,
} from "@gluestack-ui/themed";
import { useAtom } from "jotai";
import { logoutAlertAtom } from "../store/auth";

const LogoutAlertDialog = () => {
  const [openLogoutAlertDialog, setOpenLogoutAlertDialog] =
    useAtom(logoutAlertAtom);

  const close = () => setOpenLogoutAlertDialog(false);
  console.log(openLogoutAlertDialog);

  return (
    <AlertDialog
      isOpen={openLogoutAlertDialog}
      onClose={close}
      useRNModal
      avoidKeyboard
      size="md"
    >
      <AlertDialogBackdrop />
      <AlertDialogContent>
        <AlertDialogHeader>
          <Heading>Logout</Heading>
          <AlertDialogCloseButton>
            <Icon as={CloseIcon} />
          </AlertDialogCloseButton>
        </AlertDialogHeader>
        <AlertDialogBody>
          <Text>Are you sure, you want to logout?</Text>
        </AlertDialogBody>
        <AlertDialogFooter>
          <Button variant="outline" action="secondary" onPress={close} mr="$3">
            <ButtonText>Cancel</ButtonText>
          </Button>
          <Button action="negative" onPress={close}>
            <ButtonText>Logout</ButtonText>
          </Button>
        </AlertDialogFooter>
      </AlertDialogContent>
    </AlertDialog>
  );
};

export default LogoutAlertDialog;
