.class public Landroid/net/wifi/WifiManager$MulticastLock;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MulticastLock"
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mHeld:Z

.field private mRefCount:I

.field private mRefCounted:Z

.field private mTag:Ljava/lang/String;

.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor <init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "tag"

    .prologue
    const/4 v1, 0x0

    .line 2001
    iput-object p1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2002
    iput-object p2, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mTag:Ljava/lang/String;

    .line 2003
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    .line 2004
    iput v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    .line 2005
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    .line 2006
    iput-boolean v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z

    .line 2007
    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/net/wifi/WifiManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1994
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiManager$MulticastLock;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2030
    iget-object v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 2031
    :try_start_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ne v0, v2, :cond_0

    .line 2033
    :goto_0
    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v0, v0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mTag:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/net/wifi/IWifiManager;->acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 2034
    iget-object v2, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2035
    :try_start_2
    iget-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    #getter for: Landroid/net/wifi/WifiManager;->mActiveLockCount:I
    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$500(Landroid/net/wifi/WifiManager;)I

    move-result v0

    const/16 v3, 0x32

    if-lt v0, v3, :cond_2

    .line 2036
    iget-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v0, v0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->releaseMulticastLock()V

    .line 2037
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Exceeded maximum number of wifi locks"

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2041
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2042
    :catch_0
    move-exception v0

    .line 2044
    :goto_1
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z

    .line 2046
    :cond_0
    monitor-exit v1

    .line 2047
    return-void

    .line 2031
    :cond_1
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2040
    :cond_2
    :try_start_5
    iget-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$508(Landroid/net/wifi/WifiManager;)I

    .line 2041
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 2046
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2138
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    .line 2140
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    .line 2141
    return-void
.end method

.method public isHeld()Z
    .locals 2

    .prologue
    .line 2117
    iget-object v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 2118
    :try_start_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z

    monitor-exit v1

    return v0

    .line 2119
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 4

    .prologue
    .line 2074
    iget-object v1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v1

    .line 2075
    :try_start_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2077
    :goto_0
    :try_start_1
    iget-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    iget-object v0, v0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->releaseMulticastLock()V

    .line 2078
    iget-object v2, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2079
    :try_start_2
    iget-object v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$510(Landroid/net/wifi/WifiManager;)I

    .line 2080
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2083
    :goto_1
    const/4 v0, 0x0

    :try_start_3
    iput-boolean v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z

    .line 2085
    :cond_0
    iget v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    if-gez v0, :cond_2

    .line 2086
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MulticastLock under-locked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2089
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 2075
    :cond_1
    :try_start_4
    iget-boolean v0, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2080
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 2081
    :catch_0
    move-exception v0

    goto :goto_1

    .line 2089
    :cond_2
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 2090
    return-void
.end method

.method public setReferenceCounted(Z)V
    .locals 0
    .parameter "refCounted"

    .prologue
    .line 2108
    iput-boolean p1, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    .line 2109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2124
    iget-object v4, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mBinder:Landroid/os/IBinder;

    monitor-enter v4

    .line 2125
    :try_start_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 2126
    .local v0, s1:Ljava/lang/String;
    iget-boolean v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mHeld:Z

    if-eqz v3, :cond_0

    const-string v1, "held; "

    .line 2127
    .local v1, s2:Ljava/lang/String;
    :goto_0
    iget-boolean v3, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCounted:Z

    if-eqz v3, :cond_1

    .line 2128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "refcounted: refcount = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Landroid/net/wifi/WifiManager$MulticastLock;->mRefCount:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2132
    .local v2, s3:Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MulticastLock{ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "; "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " }"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v4

    return-object v3

    .line 2126
    .end local v1           #s2:Ljava/lang/String;
    .end local v2           #s3:Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0

    .line 2130
    .restart local v1       #s2:Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "not refcounted"

    .restart local v2       #s3:Ljava/lang/String;
    goto :goto_1

    .line 2133
    .end local v0           #s1:Ljava/lang/String;
    .end local v1           #s2:Ljava/lang/String;
    .end local v2           #s3:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
