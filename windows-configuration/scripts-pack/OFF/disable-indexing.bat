:: Stops and disables the indexing service which is used to speed up searches. While it is useful with HDDs, on modern SSDs it is mostly unnecessary and causes some extra wear on the memory cells.

:: Sets the title of the window
title Disable Indexing Service

:: Stops the indexing service
sc stop "wsearch"

:: Disables the indexing service
sc config "wsearch" start=disabled

:: To reenable the service use the following command:
:: sc config “wsearch” start=delayed-auto && sc start “wsearch”