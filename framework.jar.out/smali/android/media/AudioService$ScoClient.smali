.class Landroid/media/AudioService$ScoClient;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScoClient"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mCreatorPid:I

.field private mStartcount:I

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method constructor <init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    .locals 1
    .parameter
    .parameter "cb"

    .prologue
    .line 2057
    iput-object p1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2058
    iput-object p2, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    .line 2059
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Landroid/media/AudioService$ScoClient;->mCreatorPid:I

    .line 2060
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    .line 2061
    return-void
.end method

.method private requestScoState(II)V
    .locals 8
    .parameter "state"
    .parameter "targetSdkVersion"

    .prologue
    const/4 v7, 0x5

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2149
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->checkScoAudioState()V
    invoke-static {v2}, Landroid/media/AudioService;->access$2000(Landroid/media/AudioService;)V

    .line 2150
    invoke-virtual {p0}, Landroid/media/AudioService$ScoClient;->totalCount()I

    move-result v2

    if-nez v2, :cond_4

    .line 2151
    const/16 v2, 0xc

    if-ne p1, v2, :cond_a

    .line 2154
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/4 v5, 0x2

    #calls: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v2, v5}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;I)V

    .line 2157
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService;->access$1000(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 2158
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService;->access$1000(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v2}, Landroid/media/AudioService;->access$1000(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$SetModeDeathHandler;

    invoke-virtual {v2}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v2

    iget v6, p0, Landroid/media/AudioService$ScoClient;->mCreatorPid:I

    if-ne v2, v6, :cond_9

    :cond_0
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v2

    if-ne v2, v7, :cond_9

    .line 2162
    :cond_1
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v2

    if-nez v2, :cond_8

    .line 2163
    iget-object v6, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/16 v2, 0x12

    if-ge p2, v2, :cond_5

    move v2, v3

    :goto_0
    #setter for: Landroid/media/AudioService;->mScoAudioMode:I
    invoke-static {v6, v2}, Landroid/media/AudioService;->access$2302(Landroid/media/AudioService;I)I

    .line 2171
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2172
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 2173
    .local v0, btClass:Landroid/bluetooth/BluetoothClass;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x408

    if-ne v2, v3, :cond_2

    const/high16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2176
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #setter for: Landroid/media/AudioService;->mScoAudioMode:I
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$2302(Landroid/media/AudioService;I)I

    .line 2179
    .end local v0           #btClass:Landroid/bluetooth/BluetoothClass;
    :cond_2
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2181
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v3}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothHeadset;->startScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 2183
    .local v1, status:Z
    if-eqz v1, :cond_6

    .line 2184
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x3

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;I)I

    .line 2199
    .end local v1           #status:Z
    :cond_3
    :goto_1
    monitor-exit v5

    .line 2222
    :cond_4
    :goto_2
    return-void

    :cond_5
    move v2, v4

    .line 2163
    goto :goto_0

    .line 2186
    .restart local v1       #status:Z
    :cond_6
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #calls: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;I)V

    goto :goto_1

    .line 2199
    .end local v1           #status:Z
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2189
    :cond_7
    :try_start_1
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->getBluetoothHeadset()Z
    invoke-static {v2}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2190
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;I)I

    goto :goto_1

    .line 2193
    :cond_8
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x3

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;I)I

    .line 2194
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x1

    #calls: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;I)V

    goto :goto_1

    .line 2197
    :cond_9
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    const/4 v3, 0x0

    #calls: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2200
    :cond_a
    const/16 v2, 0xa

    if-ne p1, v2, :cond_4

    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v2

    if-eq v2, v5, :cond_b

    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 2203
    :cond_b
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2}, Landroid/media/AudioService;->access$2200(Landroid/media/AudioService;)I

    move-result v2

    if-ne v2, v5, :cond_d

    .line 2204
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v2}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 2206
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v2}, Landroid/media/AudioService;->access$2500(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    iget-object v4, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v4}, Landroid/media/AudioService;->access$2400(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothHeadset;->stopScoUsingVirtualVoiceCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 2208
    .restart local v1       #status:Z
    if-nez v1, :cond_4

    .line 2209
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;I)I

    .line 2210
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;I)V

    goto :goto_2

    .line 2213
    .end local v1           #status:Z
    :cond_c
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->getBluetoothHeadset()Z
    invoke-static {v2}, Landroid/media/AudioService;->access$2600(Landroid/media/AudioService;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2214
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2, v7}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;I)I

    goto/16 :goto_2

    .line 2217
    :cond_d
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #setter for: Landroid/media/AudioService;->mScoAudioState:I
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$2202(Landroid/media/AudioService;I)I

    .line 2218
    iget-object v2, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #calls: Landroid/media/AudioService;->broadcastScoConnectionState(I)V
    invoke-static {v2, v3}, Landroid/media/AudioService;->access$2100(Landroid/media/AudioService;I)V

    goto/16 :goto_2
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 2064
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 2065
    :try_start_0
    const-string v1, "AudioService"

    const-string v3, "SCO client died"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2067
    .local v0, index:I
    if-gez v0, :cond_0

    .line 2068
    const-string v1, "AudioService"

    const-string/jumbo v3, "unregistered SCO client died"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    :goto_0
    monitor-exit v2

    .line 2074
    return-void

    .line 2070
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/media/AudioService$ScoClient;->clearCount(Z)V

    .line 2071
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2073
    .end local v0           #index:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clearCount(Z)V
    .locals 5
    .parameter "stopSco"

    .prologue
    .line 2110
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 2111
    :try_start_0
    iget v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2113
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2118
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    .line 2119
    if-eqz p1, :cond_1

    .line 2120
    const/16 v1, 0xa

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Landroid/media/AudioService$ScoClient;->requestScoState(II)V

    .line 2122
    :cond_1
    monitor-exit v2

    .line 2123
    return-void

    .line 2114
    :catch_0
    move-exception v0

    .line 2115
    .local v0, e:Ljava/util/NoSuchElementException;
    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearCount() mStartcount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != 0 but not registered to binder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2122
    .end local v0           #e:Ljava/util/NoSuchElementException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public decCount()V
    .locals 4

    .prologue
    .line 2092
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 2093
    :try_start_0
    iget v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    if-nez v1, :cond_0

    .line 2094
    const-string v1, "AudioService"

    const-string v3, "ScoClient.decCount() already 0"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    :goto_0
    monitor-exit v2

    .line 2107
    return-void

    .line 2096
    :cond_0
    iget v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    .line 2097
    iget v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 2099
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2104
    :cond_1
    :goto_1
    const/16 v1, 0xa

    const/4 v3, 0x0

    :try_start_2
    invoke-direct {p0, v1, v3}, Landroid/media/AudioService$ScoClient;->requestScoState(II)V

    goto :goto_0

    .line 2106
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2100
    :catch_0
    move-exception v0

    .line 2101
    .local v0, e:Ljava/util/NoSuchElementException;
    :try_start_3
    const-string v1, "AudioService"

    const-string v3, "decCount() going to 0 but not registered to binder"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 2130
    iget-object v0, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 2126
    iget v0, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    return v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 2134
    iget v0, p0, Landroid/media/AudioService$ScoClient;->mCreatorPid:I

    return v0
.end method

.method public incCount(I)V
    .locals 5
    .parameter "targetSdkVersion"

    .prologue
    .line 2077
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v1}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v2

    monitor-enter v2

    .line 2078
    const/16 v1, 0xc

    :try_start_0
    invoke-direct {p0, v1, p1}, Landroid/media/AudioService$ScoClient;->requestScoState(II)V

    .line 2079
    iget v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2081
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2087
    :cond_0
    :goto_0
    :try_start_2
    iget v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/media/AudioService$ScoClient;->mStartcount:I

    .line 2088
    monitor-exit v2

    .line 2089
    return-void

    .line 2082
    :catch_0
    move-exception v0

    .line 2084
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScoClient  incCount() could not link to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/AudioService$ScoClient;->mCb:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " binder death"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2088
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public totalCount()I
    .locals 5

    .prologue
    .line 2138
    iget-object v3, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    monitor-enter v4

    .line 2139
    const/4 v0, 0x0

    .line 2140
    .local v0, count:I
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2141
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2142
    iget-object v3, p0, Landroid/media/AudioService$ScoClient;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService;->access$1900(Landroid/media/AudioService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$ScoClient;

    invoke-virtual {v3}, Landroid/media/AudioService$ScoClient;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 2141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2144
    :cond_0
    monitor-exit v4

    return v0

    .line 2145
    .end local v1           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
