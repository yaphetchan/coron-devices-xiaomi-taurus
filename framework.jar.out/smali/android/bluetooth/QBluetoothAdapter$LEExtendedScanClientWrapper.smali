.class Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;
.super Landroid/bluetooth/IQBluetoothAdapterCallback$Stub;
.source "QBluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/QBluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LEExtendedScanClientWrapper"
.end annotation


# instance fields
.field private final mAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/bluetooth/QBluetoothAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private final mClient:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private final mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

.field private mScanToken:I

.field private final mServiceFilter:[Landroid/bluetooth/BluetoothLEServiceUuid;


# direct methods
.method public constructor <init>(Landroid/bluetooth/QBluetoothAdapter;Landroid/bluetooth/IQBluetooth;[Landroid/bluetooth/BluetoothLEServiceUuid;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 1
    .parameter "adapter"
    .parameter "adapterService"
    .parameter "services"
    .parameter "callback"

    .prologue
    .line 350
    invoke-direct {p0}, Landroid/bluetooth/IQBluetoothAdapterCallback$Stub;-><init>()V

    .line 351
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mAdapter:Ljava/lang/ref/WeakReference;

    .line 352
    iput-object p2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

    .line 353
    iput-object p3, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mServiceFilter:[Landroid/bluetooth/BluetoothLEServiceUuid;

    .line 354
    iput-object p4, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mClient:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 355
    const/4 v0, -0x1

    iput v0, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mScanToken:I

    .line 356
    return-void
.end method


# virtual methods
.method public onEnableRssiMonitor(Ljava/lang/String;II)V
    .locals 0
    .parameter "address"
    .parameter "enable"
    .parameter "status"

    .prologue
    .line 418
    return-void
.end method

.method public onReadRssiThreshold(Ljava/lang/String;IIII)V
    .locals 0
    .parameter "address"
    .parameter "low"
    .parameter "upper"
    .parameter "alert"
    .parameter "status"

    .prologue
    .line 415
    return-void
.end method

.method public onRssiThresholdEvent(Ljava/lang/String;II)V
    .locals 0
    .parameter "address"
    .parameter "evtType"
    .parameter "rssi"

    .prologue
    .line 421
    return-void
.end method

.method public onScanResult(Ljava/lang/String;I[B)V
    .locals 5
    .parameter "address"
    .parameter "rssi"
    .parameter "advData"

    .prologue
    .line 395
    monitor-enter p0

    .line 396
    :try_start_0
    iget v2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mScanToken:I

    if-gtz v2, :cond_0

    monitor-exit p0

    .line 408
    :goto_0
    return-void

    .line 397
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/QBluetoothAdapter;

    .line 400
    .local v0, adapter:Landroid/bluetooth/QBluetoothAdapter;
    if-nez v0, :cond_1

    .line 401
    const-string v2, "QBluetoothAdapter"

    const-string v3, "OnScanResult, QBluetoothAdapter null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 405
    .end local v0           #adapter:Landroid/bluetooth/QBluetoothAdapter;
    :catch_0
    move-exception v1

    .line 406
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "QBluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 397
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 404
    .restart local v0       #adapter:Landroid/bluetooth/QBluetoothAdapter;
    :cond_1
    :try_start_3
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mClient:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {v2, v3, p2, p3}, Landroid/bluetooth/BluetoothAdapter$LeScanCallback;->onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public onUpdateLease()Z
    .locals 3

    .prologue
    .line 424
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/QBluetoothAdapter;

    .line 425
    .local v0, adapter:Landroid/bluetooth/QBluetoothAdapter;
    if-nez v0, :cond_0

    .line 426
    const-string v1, "QBluetoothAdapter"

    const-string/jumbo v2, "onUpdateLease(), QBluetoothAdapter null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/4 v1, 0x0

    .line 429
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onWriteRssiThreshold(Ljava/lang/String;I)V
    .locals 0
    .parameter "address"
    .parameter "status"

    .prologue
    .line 411
    return-void
.end method

.method public startScan()Z
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 359
    const/4 v1, 0x0

    .line 360
    .local v1, started:Z
    monitor-enter p0

    .line 361
    :try_start_0
    iget v2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mScanToken:I

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 364
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

    iget-object v3, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mServiceFilter:[Landroid/bluetooth/BluetoothLEServiceUuid;

    invoke-interface {v2, v3, p0}, Landroid/bluetooth/IQBluetooth;->startLeScanEx([Landroid/bluetooth/BluetoothLEServiceUuid;Landroid/bluetooth/IQBluetoothAdapterCallback;)I

    move-result v2

    iput v2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mScanToken:I

    .line 365
    iget v2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mScanToken:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eq v2, v4, :cond_0

    .line 366
    const/4 v1, 0x1

    .line 373
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 374
    return v1

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "QBluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    const/4 v1, 0x0

    goto :goto_0

    .line 373
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public stopScan()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 378
    monitor-enter p0

    .line 379
    :try_start_0
    iget v1, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mScanToken:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 382
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mQBluetoothAdapterService:Landroid/bluetooth/IQBluetooth;

    iget v2, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mScanToken:I

    invoke-interface {v1, v2}, Landroid/bluetooth/IQBluetooth;->stopLeScanEx(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 386
    :goto_0
    const/4 v1, -0x1

    :try_start_2
    iput v1, p0, Landroid/bluetooth/QBluetoothAdapter$LEExtendedScanClientWrapper;->mScanToken:I

    .line 388
    :cond_0
    monitor-exit p0

    .line 389
    return-void

    .line 383
    :catch_0
    move-exception v0

    .line 384
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "QBluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 388
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
