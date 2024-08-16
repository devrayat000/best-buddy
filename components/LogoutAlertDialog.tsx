import { useAtom, useSetAtom } from "jotai";
import { logoutAlertAtom, tokenAtom } from "../store/auth";
import { unregisterForPushNotificationsAsync } from "../lib/notification";
import { Dialog, Portal, Button, Text } from "react-native-paper";

const LogoutModal = () => {
  const [openLogoutModal, setOpenLogoutModal] = useAtom(logoutAlertAtom);
  const setToken = useSetAtom(tokenAtom);

  const close = () => setOpenLogoutModal(false);
  async function logout() {
    await unregisterForPushNotificationsAsync();
    close();
    await setToken(null);
  }

  return (
    <Portal>
      <Dialog visible={openLogoutModal} onDismiss={close} dismissable>
        {/* <ModalBackdrop /> */}
        <Dialog.Title>Logout</Dialog.Title>
        <Dialog.Content>
          <Text>Are you sure, you want to logout?</Text>
        </Dialog.Content>
        <Dialog.Actions>
          <Button mode="outlined" onPress={close}>
            Cancel
          </Button>
          <Button mode="contained-tonal" onPress={logout}>
            Logout
          </Button>
        </Dialog.Actions>
      </Dialog>
    </Portal>
  );
};

export default LogoutModal;
