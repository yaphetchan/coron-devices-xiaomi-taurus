.class Lcom/android/server/am/ActivityManagerService$6;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->showLaunchWarningLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$cur:Lcom/android/server/am/ActivityRecord;

.field final synthetic val$next:Lcom/android/server/am/ActivityRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4145
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$6;->val$cur:Lcom/android/server/am/ActivityRecord;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$6;->val$next:Lcom/android/server/am/ActivityRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 4148
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 4149
    :try_start_0
    new-instance v0, Lcom/android/server/am/LaunchWarningWindow;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$6;->val$cur:Lcom/android/server/am/ActivityRecord;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$6;->val$next:Lcom/android/server/am/ActivityRecord;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/am/LaunchWarningWindow;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 4150
    .local v0, d:Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4151
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$6;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/ActivityManagerService$6$1;

    invoke-direct {v3, p0, v0}, Lcom/android/server/am/ActivityManagerService$6$1;-><init>(Lcom/android/server/am/ActivityManagerService$6;Landroid/app/Dialog;)V

    const-wide/16 v4, 0xfa0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4160
    monitor-exit v2

    .line 4161
    return-void

    .line 4160
    .end local v0           #d:Landroid/app/Dialog;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
