.class Lcom/android/server/wm/WindowManagerService$RotationWatcher;
.super Ljava/lang/Object;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RotationWatcher"
.end annotation


# instance fields
.field dr:Landroid/os/IBinder$DeathRecipient;

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;

.field watcher:Landroid/view/IRotationWatcher;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRotationWatcher;Landroid/os/IBinder$DeathRecipient;)V
    .locals 0
    .parameter
    .parameter "w"
    .parameter "d"

    .prologue
    .line 446
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    iput-object p2, p0, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->watcher:Landroid/view/IRotationWatcher;

    .line 448
    iput-object p3, p0, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->dr:Landroid/os/IBinder$DeathRecipient;

    .line 449
    return-void
.end method
