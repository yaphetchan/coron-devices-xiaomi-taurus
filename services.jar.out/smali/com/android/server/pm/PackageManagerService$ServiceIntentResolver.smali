.class final Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver",
        "<",
        "Landroid/content/pm/PackageParser$ServiceIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mFlags:I

.field private final mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Service;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .parameter

    .prologue
    .line 5894
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 6088
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mServices:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5894
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5894
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mServices:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public final addService(Landroid/content/pm/PackageParser$Service;)V
    .locals 6
    .parameter "s"

    .prologue
    .line 5936
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mServices:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Service;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5943
    iget-object v3, p1, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5945
    .local v0, NI:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5946
    iget-object v3, p1, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .line 5951
    .local v1, intent:Landroid/content/pm/PackageParser$ServiceIntentInfo;
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->debugCheck()Z

    move-result v3

    if-nez v3, :cond_0

    .line 5952
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==> For Service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5954
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 5945
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5956
    .end local v1           #intent:Landroid/content/pm/PackageParser$ServiceIntentInfo;
    :cond_1
    return-void
.end method

.method protected bridge synthetic allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5894
    check-cast p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->allowFilterResult(Landroid/content/pm/PackageParser$ServiceIntentInfo;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected allowFilterResult(Landroid/content/pm/PackageParser$ServiceIntentInfo;Ljava/util/List;)Z
    .locals 5
    .parameter "filter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$ServiceIntentInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 5980
    .local p2, dest:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    iget-object v1, v3, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    .line 5981
    .local v1, filterSi:Landroid/content/pm/ServiceInfo;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 5982
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 5983
    .local v0, destAi:Landroid/content/pm/ServiceInfo;
    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    if-ne v3, v4, :cond_0

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    if-ne v3, v4, :cond_0

    .line 5985
    const/4 v3, 0x0

    .line 5988
    .end local v0           #destAi:Landroid/content/pm/ServiceInfo;
    :goto_1
    return v3

    .line 5981
    .restart local v0       #destAi:Landroid/content/pm/ServiceInfo;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5988
    .end local v0           #destAi:Landroid/content/pm/ServiceInfo;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 5894
    check-cast p3, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .end local p3
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ServiceIntentInfo;)V

    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ServiceIntentInfo;)V
    .locals 1
    .parameter "out"
    .parameter "prefix"
    .parameter "filter"

    .prologue
    .line 6067
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p3, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6069
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 6070
    iget-object v0, p3, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageParser$Service;->printComponentShortName(Ljava/io/PrintWriter;)V

    .line 6071
    const-string v0, " filter "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6072
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6073
    return-void
.end method

.method protected bridge synthetic isFilterStopped(Landroid/content/IntentFilter;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5894
    check-cast p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->isFilterStopped(Landroid/content/pm/PackageParser$ServiceIntentInfo;I)Z

    move-result v0

    return v0
.end method

.method protected isFilterStopped(Landroid/content/pm/PackageParser$ServiceIntentInfo;I)Z
    .locals 5
    .parameter "filter"
    .parameter "userId"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5998
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v4, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 6010
    :cond_0
    :goto_0
    return v2

    .line 5999
    :cond_1
    iget-object v4, p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    iget-object v0, v4, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    .line 6000
    .local v0, p:Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_3

    .line 6001
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 6002
    .local v1, ps:Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_3

    .line 6006
    iget v4, v1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2

    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    move v2, v3

    goto :goto_0

    .end local v1           #ps:Lcom/android/server/pm/PackageSetting;
    :cond_3
    move v2, v3

    .line 6010
    goto :goto_0
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5894
    check-cast p2, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ServiceIntentInfo;)Z

    move-result v0

    return v0
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ServiceIntentInfo;)Z
    .locals 1
    .parameter "packageName"
    .parameter "info"

    .prologue
    .line 6016
    iget-object v0, p2, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 5894
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->newArray(I)[Landroid/content/pm/PackageParser$ServiceIntentInfo;

    move-result-object v0

    return-object v0
.end method

.method protected newArray(I)[Landroid/content/pm/PackageParser$ServiceIntentInfo;
    .locals 1
    .parameter "size"

    .prologue
    .line 5993
    new-array v0, p1, [Landroid/content/pm/PackageParser$ServiceIntentInfo;

    return-object v0
.end method

.method protected newResult(Landroid/content/pm/PackageParser$ServiceIntentInfo;II)Landroid/content/pm/ResolveInfo;
    .locals 8
    .parameter "filter"
    .parameter "match"
    .parameter "userId"

    .prologue
    const/4 v2, 0x0

    .line 6022
    sget-object v5, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v5, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 6056
    :cond_0
    :goto_0
    return-object v2

    .line 6023
    :cond_1
    move-object v0, p1

    .line 6024
    .local v0, info:Landroid/content/pm/PackageParser$ServiceIntentInfo;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v6, v0, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget v7, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mFlags:I

    invoke-virtual {v5, v6, v7, p3}, Lcom/android/server/pm/Settings;->isEnabledLPr(Landroid/content/pm/ComponentInfo;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6027
    iget-object v3, v0, Landroid/content/pm/PackageParser$ServiceIntentInfo;->service:Landroid/content/pm/PackageParser$Service;

    .line 6028
    .local v3, service:Landroid/content/pm/PackageParser$Service;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v5, v5, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    if-eqz v5, :cond_2

    iget-object v5, v3, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 6032
    :cond_2
    iget-object v5, v3, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v5, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 6033
    .local v1, ps:Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_0

    .line 6036
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mFlags:I

    invoke-virtual {v1, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v6

    invoke-static {v3, v5, v6, p3}, Landroid/content/pm/PackageParser;->generateServiceInfo(Landroid/content/pm/PackageParser$Service;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    .line 6038
    .local v4, si:Landroid/content/pm/ServiceInfo;
    if-eqz v4, :cond_0

    .line 6041
    new-instance v2, Landroid/content/pm/ResolveInfo;

    invoke-direct {v2}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 6042
    .local v2, res:Landroid/content/pm/ResolveInfo;
    iput-object v4, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 6043
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mFlags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_3

    .line 6044
    iput-object p1, v2, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 6046
    :cond_3
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$ServiceIntentInfo;->getPriority()I

    move-result v5

    iput v5, v2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 6047
    iget-object v5, v3, Landroid/content/pm/PackageParser$Service;->owner:Landroid/content/pm/PackageParser$Package;

    iget v5, v5, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    iput v5, v2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 6050
    iput p2, v2, Landroid/content/pm/ResolveInfo;->match:I

    .line 6051
    iget-boolean v5, v0, Landroid/content/pm/PackageParser$ServiceIntentInfo;->hasDefault:Z

    iput-boolean v5, v2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 6052
    iget v5, v0, Landroid/content/pm/PackageParser$ServiceIntentInfo;->labelRes:I

    iput v5, v2, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 6053
    iget-object v5, v0, Landroid/content/pm/PackageParser$ServiceIntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v5, v2, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 6054
    iget v5, v0, Landroid/content/pm/PackageParser$ServiceIntentInfo;->icon:I

    iput v5, v2, Landroid/content/pm/ResolveInfo;->icon:I

    .line 6055
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #calls: Lcom/android/server/pm/PackageManagerService;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->access$1700(Landroid/content/pm/ApplicationInfo;)Z

    move-result v5

    iput-boolean v5, v2, Landroid/content/pm/ResolveInfo;->system:Z

    goto :goto_0
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 5894
    check-cast p1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->newResult(Landroid/content/pm/PackageParser$ServiceIntentInfo;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5904
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5906
    :goto_0
    return-object v0

    .line 5905
    :cond_0
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mFlags:I

    .line 5906
    const/high16 v0, 0x1

    and-int/2addr v0, p3

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-super {p0, p1, p2, v0, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 1
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "defaultOnly"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5898
    if-eqz p3, :cond_0

    const/high16 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mFlags:I

    .line 5899
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 5898
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;I)Ljava/util/List;
    .locals 10
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "flags"
    .parameter
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Service;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p4, packageServices:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Service;>;"
    const/4 v0, 0x0

    .line 5912
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5932
    :cond_0
    :goto_0
    return-object v0

    .line 5913
    :cond_1
    if-eqz p4, :cond_0

    .line 5916
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mFlags:I

    .line 5917
    const/high16 v0, 0x1

    and-int/2addr v0, p3

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    .line 5918
    .local v3, defaultOnly:Z
    :goto_1
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 5919
    .local v6, N:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 5923
    .local v4, listCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ServiceIntentInfo;>;"
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    if-ge v8, v6, :cond_4

    .line 5924
    invoke-virtual {p4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Service;

    iget-object v9, v0, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    .line 5925
    .local v9, intentFilters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ServiceIntentInfo;>;"
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 5926
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v7, v0, [Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .line 5928
    .local v7, array:[Landroid/content/pm/PackageParser$ServiceIntentInfo;
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5929
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5923
    .end local v7           #array:[Landroid/content/pm/PackageParser$ServiceIntentInfo;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 5917
    .end local v3           #defaultOnly:Z
    .end local v4           #listCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ServiceIntentInfo;>;"
    .end local v6           #N:I
    .end local v8           #i:I
    .end local v9           #intentFilters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ServiceIntentInfo;>;"
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .restart local v3       #defaultOnly:Z
    .restart local v4       #listCut:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ServiceIntentInfo;>;"
    .restart local v6       #N:I
    .restart local v8       #i:I
    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p5

    .line 5932
    invoke-super/range {v0 .. v5}, Lcom/android/server/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final removeService(Landroid/content/pm/PackageParser$Service;)V
    .locals 5
    .parameter "s"

    .prologue
    .line 5959
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->mServices:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Service;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5965
    iget-object v3, p1, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5967
    .local v0, NI:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 5968
    iget-object v3, p1, Landroid/content/pm/PackageParser$Service;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ServiceIntentInfo;

    .line 5973
    .local v1, intent:Landroid/content/pm/PackageParser$ServiceIntentInfo;
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$ServiceIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    .line 5967
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5975
    .end local v1           #intent:Landroid/content/pm/PackageParser$ServiceIntentInfo;
    :cond_0
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6061
    .local p1, results:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$1800()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 6062
    return-void
.end method
