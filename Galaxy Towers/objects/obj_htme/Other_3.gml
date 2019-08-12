/// @description Disconnect or kick clients if started
if (!self.isConnected) exit;

if (self.isServer) {
    htme_serverShutdown();
} else {
    htme_clientDisconnect();
}

