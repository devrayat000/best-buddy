import {
  Modal,
  Text,
  Heading,
  Icon,
  Button,
  CloseIcon,
  ModalBackdrop,
  ModalContent,
  ButtonText,
  ModalHeader,
  ModalCloseButton,
  ModalBody,
  ModalFooter,
} from "@gluestack-ui/themed";
import { useAtom, useSetAtom } from "jotai";
import { logoutAlertAtom, sessionAtom } from "../store/auth";
import { unregisterForPushNotificationsAsync } from "../lib/notification";

const LogoutModal = () => {
  const [openLogoutModal, setOpenLogoutModal] = useAtom(logoutAlertAtom);
  const setSession = useSetAtom(sessionAtom);

  const close = () => setOpenLogoutModal(false);
  console.log(openLogoutModal);

  async function logout() {
    await unregisterForPushNotificationsAsync();
    close();
    await setSession(null);
  }

  return (
    <Modal
      isOpen={openLogoutModal}
      onClose={close}
      useRNModal
      avoidKeyboard
      size="md"
    >
      <ModalBackdrop />
      <ModalContent>
        <ModalHeader>
          <Heading>Logout</Heading>
          <ModalCloseButton>
            <Icon as={CloseIcon} />
          </ModalCloseButton>
        </ModalHeader>
        <ModalBody>
          <Text>Are you sure, you want to logout?</Text>
        </ModalBody>
        <ModalFooter>
          <Button variant="outline" action="secondary" onPress={close} mr="$3">
            <ButtonText>Cancel</ButtonText>
          </Button>
          <Button action="negative" onPress={logout}>
            <ButtonText>Logout</ButtonText>
          </Button>
        </ModalFooter>
      </ModalContent>
    </Modal>
  );
};

export default LogoutModal;
