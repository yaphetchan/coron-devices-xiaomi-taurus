.class Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PendingActivityLaunch"
.end annotation


# instance fields
.field final r:Lcom/android/server/am/ActivityRecord;

.field final sourceRecord:Lcom/android/server/am/ActivityRecord;

.field final stack:Lcom/android/server/am/ActivityStack;

.field final startFlags:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ILcom/android/server/am/ActivityStack;)V
    .locals 0
    .parameter "_r"
    .parameter "_sourceRecord"
    .parameter "_startFlags"
    .parameter "_stack"

    .prologue
    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    .line 359
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 360
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->startFlags:I

    .line 361
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->stack:Lcom/android/server/am/ActivityStack;

    .line 362
    return-void
.end method
