.class public Landroid/mtp/MtpDatabase;
.super Ljava/lang/Object;
.source "MtpDatabase.java"


# static fields
.field static final ALL_PROPERTIES:[I = null

.field static final AUDIO_PROPERTIES:[I = null

.field private static final DEVICE_PROPERTIES_DATABASE_VERSION:I = 0x1

.field static final FILE_PROPERTIES:[I = null

.field private static final FORMAT_PARENT_WHERE:Ljava/lang/String; = "format=? AND parent=?"

.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field static final IMAGE_PROPERTIES:[I = null

.field private static final OBJECT_INFO_PROJECTION:[Ljava/lang/String; = null

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final PATH_FORMAT_PROJECTION:[Ljava/lang/String; = null

.field private static final PATH_PROJECTION:[Ljava/lang/String; = null

.field private static final PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final STORAGE_FORMAT_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND format=? AND parent=?"

.field private static final STORAGE_FORMAT_WHERE:Ljava/lang/String; = "storage_id=? AND format=?"

.field private static final STORAGE_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND parent=?"

.field private static final STORAGE_WHERE:Ljava/lang/String; = "storage_id=?"

.field private static final TAG:Ljava/lang/String; = "MtpDatabase"

.field static final VIDEO_PROPERTIES:[I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDatabaseModified:Z

.field private mDeviceProperties:Landroid/content/SharedPreferences;

.field private final mMediaProvider:Landroid/content/IContentProvider;

.field private final mMediaScanner:Landroid/media/MediaScanner;

.field private final mMediaStoragePath:Ljava/lang/String;

.field private mNativeContext:I

.field private final mObjectsUri:Landroid/net/Uri;

.field private final mPackageName:Ljava/lang/String;

.field private final mPropertyGroupsByFormat:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPropertyGroupsByProperty:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubDirectories:[Ljava/lang/String;

.field private mSubDirectoriesWhere:Ljava/lang/String;

.field private mSubDirectoriesWhereArgs:[Ljava/lang/String;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    .line 84
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    .line 88
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "format"

    aput-object v1, v0, v4

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    .line 93
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "storage_id"

    aput-object v1, v0, v3

    const-string v1, "format"

    aput-object v1, v0, v4

    const-string/jumbo v1, "parent"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    .line 120
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 524
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    .line 539
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    .line 564
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    .line 587
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    .line 605
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/mtp/MtpDatabase;->ALL_PROPERTIES:[I

    return-void

    .line 524
    nop

    :array_0
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
    .end array-data

    .line 539
    :array_1
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
        0x46t 0xdct 0x0t 0x0t
        0x9at 0xdct 0x0t 0x0t
        0x9bt 0xdct 0x0t 0x0t
        0x8bt 0xdct 0x0t 0x0t
        0x99t 0xdct 0x0t 0x0t
        0x89t 0xdct 0x0t 0x0t
        0x8ct 0xdct 0x0t 0x0t
        0x96t 0xdct 0x0t 0x0t
    .end array-data

    .line 564
    :array_2
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
        0x46t 0xdct 0x0t 0x0t
        0x9at 0xdct 0x0t 0x0t
        0x89t 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
        0x9bt 0xdet 0x0t 0x0t
        0xa1t 0xdet 0x0t 0x0t
    .end array-data

    .line 587
    :array_3
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
    .end array-data

    .line 605
    :array_4
    .array-data 0x4
        0x1t 0xdct 0x0t 0x0t
        0x2t 0xdct 0x0t 0x0t
        0x3t 0xdct 0x0t 0x0t
        0x4t 0xdct 0x0t 0x0t
        0x7t 0xdct 0x0t 0x0t
        0x9t 0xdct 0x0t 0x0t
        0xbt 0xdct 0x0t 0x0t
        0x41t 0xdct 0x0t 0x0t
        0x44t 0xdct 0x0t 0x0t
        0xe0t 0xdct 0x0t 0x0t
        0x4et 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
        0x46t 0xdct 0x0t 0x0t
        0x9at 0xdct 0x0t 0x0t
        0x9bt 0xdct 0x0t 0x0t
        0x8bt 0xdct 0x0t 0x0t
        0x99t 0xdct 0x0t 0x0t
        0x89t 0xdct 0x0t 0x0t
        0x8ct 0xdct 0x0t 0x0t
        0x96t 0xdct 0x0t 0x0t
        0x46t 0xdct 0x0t 0x0t
        0x9at 0xdct 0x0t 0x0t
        0x89t 0xdct 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
        0x9bt 0xdet 0x0t 0x0t
        0xa1t 0xdet 0x0t 0x0t
        0x48t 0xdct 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 13
    .parameter "context"
    .parameter "volumeName"
    .parameter "storagePath"
    .parameter "subDirectories"

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    .line 67
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    .line 71
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    .line 125
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_setup()V

    .line 127
    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "media"

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    .line 130
    iput-object p2, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    .line 131
    move-object/from16 v0, p3

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    .line 132
    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    .line 133
    new-instance v10, Landroid/media/MediaScanner;

    invoke-direct {v10, p1}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    .line 135
    move-object/from16 v0, p4

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    .line 136
    if-eqz p4, :cond_2

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v10, "("

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    move-object/from16 v0, p4

    array-length v2, v0

    .line 141
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 142
    const-string v10, "_data=? OR _data LIKE ?"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    add-int/lit8 v10, v2, -0x1

    if-eq v4, v10, :cond_0

    .line 145
    const-string v10, " OR "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 148
    :cond_1
    const-string v10, ")"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 152
    mul-int/lit8 v10, v2, 0x2

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 153
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v5, j:I
    move v6, v5

    .end local v5           #j:I
    .local v6, j:I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 154
    aget-object v9, p4, v4

    .line 155
    .local v9, path:Ljava/lang/String;
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v5, v6, 0x1

    .end local v6           #j:I
    .restart local v5       #j:I
    aput-object v9, v10, v6

    .line 156
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    .end local v5           #j:I
    .restart local v6       #j:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 153
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 161
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v6           #j:I
    .end local v9           #path:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v8, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 162
    .local v8, locale:Ljava/util/Locale;
    if-eqz v8, :cond_3

    .line 163
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 164
    .local v7, language:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, country:Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 166
    if-eqz v3, :cond_4

    .line 167
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    .line 173
    .end local v3           #country:Ljava/lang/String;
    .end local v7           #language:Ljava/lang/String;
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->initDeviceProperties(Landroid/content/Context;)V

    .line 174
    return-void

    .line 169
    .restart local v3       #country:Ljava/lang/String;
    .restart local v7       #language:Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    invoke-virtual {v10, v7}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private beginSendObject(Ljava/lang/String;IIIJJ)I
    .locals 12
    .parameter "path"
    .parameter "format"
    .parameter "parent"
    .parameter "storageId"
    .parameter "size"
    .parameter "modified"

    .prologue
    .line 263
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->inStorageSubDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 302
    :cond_0
    :goto_0
    return v0

    .line 266
    :cond_1
    if-eqz p1, :cond_3

    .line 267
    const/4 v8, 0x0

    .line 269
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "_data=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 271
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 272
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file already exists in beginSendObject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    const/4 v0, -0x1

    .line 278
    if-eqz v8, :cond_0

    .line 279
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 278
    :cond_2
    if-eqz v8, :cond_3

    .line 279
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 284
    .end local v8           #c:Landroid/database/Cursor;
    :cond_3
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 285
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 286
    .local v11, values:Landroid/content/ContentValues;
    const-string v0, "_data"

    invoke-virtual {v11, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v0, "format"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 288
    const-string/jumbo v0, "parent"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 289
    const-string/jumbo v0, "storage_id"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 290
    const-string v0, "_size"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 291
    const-string v0, "date_modified"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 294
    :try_start_1
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2, v11}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 295
    .local v10, uri:Landroid/net/Uri;
    if-eqz v10, :cond_5

    .line 296
    invoke-virtual {v10}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto/16 :goto_0

    .line 275
    .end local v10           #uri:Landroid/net/Uri;
    .end local v11           #values:Landroid/content/ContentValues;
    .restart local v8       #c:Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 276
    .local v9, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in beginSendObject"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 278
    if-eqz v8, :cond_3

    .line 279
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 278
    .end local v9           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 279
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 298
    .end local v8           #c:Landroid/database/Cursor;
    .restart local v10       #uri:Landroid/net/Uri;
    .restart local v11       #values:Landroid/content/ContentValues;
    :cond_5
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 300
    .end local v10           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v9

    .line 301
    .restart local v9       #e:Landroid/os/RemoteException;
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in beginSendObject"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 302
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method private createObjectQuery(III)Landroid/database/Cursor;
    .locals 11
    .parameter "storageID"
    .parameter "format"
    .parameter "parent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 346
    if-ne p1, v0, :cond_6

    .line 348
    if-nez p2, :cond_3

    .line 350
    if-nez p3, :cond_1

    .line 352
    const/4 v4, 0x0

    .line 353
    .local v4, where:Ljava/lang/String;
    const/4 v5, 0x0

    .line 417
    .local v5, whereArgs:[Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 418
    if-nez v4, :cond_c

    .line 419
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 420
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 438
    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    move-object v7, v6

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 355
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_1
    if-ne p3, v0, :cond_2

    .line 357
    const/4 p3, 0x0

    .line 359
    :cond_2
    const-string/jumbo v4, "parent=?"

    .line 360
    .restart local v4       #where:Ljava/lang/String;
    new-array v5, v2, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .restart local v5       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 364
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_3
    if-nez p3, :cond_4

    .line 366
    const-string v4, "format=?"

    .line 367
    .restart local v4       #where:Ljava/lang/String;
    new-array v5, v2, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .restart local v5       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 369
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_4
    if-ne p3, v0, :cond_5

    .line 371
    const/4 p3, 0x0

    .line 373
    :cond_5
    const-string v4, "format=? AND parent=?"

    .line 374
    .restart local v4       #where:Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .restart local v5       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 380
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_6
    if-nez p2, :cond_9

    .line 382
    if-nez p3, :cond_7

    .line 384
    const-string/jumbo v4, "storage_id=?"

    .line 385
    .restart local v4       #where:Ljava/lang/String;
    new-array v5, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .restart local v5       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 387
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_7
    if-ne p3, v0, :cond_8

    .line 389
    const/4 p3, 0x0

    .line 391
    :cond_8
    const-string/jumbo v4, "storage_id=? AND parent=?"

    .line 392
    .restart local v4       #where:Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .restart local v5       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 397
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_9
    if-nez p3, :cond_a

    .line 399
    const-string/jumbo v4, "storage_id=? AND format=?"

    .line 400
    .restart local v4       #where:Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .restart local v5       #whereArgs:[Ljava/lang/String;
    goto :goto_0

    .line 403
    .end local v4           #where:Ljava/lang/String;
    .end local v5           #whereArgs:[Ljava/lang/String;
    :cond_a
    if-ne p3, v0, :cond_b

    .line 405
    const/4 p3, 0x0

    .line 407
    :cond_b
    const-string/jumbo v4, "storage_id=? AND format=? AND parent=?"

    .line 408
    .restart local v4       #where:Ljava/lang/String;
    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    .restart local v5       #whereArgs:[Ljava/lang/String;
    goto/16 :goto_0

    .line 422
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 425
    array-length v0, v5

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v10, v0, [Ljava/lang/String;

    .line 428
    .local v10, newWhereArgs:[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    array-length v0, v5

    if-ge v8, v0, :cond_d

    .line 429
    aget-object v0, v5, v8

    aput-object v0, v10, v8

    .line 428
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 431
    :cond_d
    const/4 v9, 0x0

    .local v9, j:I
    :goto_3
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v0, v0

    if-ge v9, v0, :cond_e

    .line 432
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    aget-object v0, v0, v9

    aput-object v0, v10, v8

    .line 431
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 434
    :cond_e
    move-object v5, v10

    goto/16 :goto_1
.end method

.method private deleteFile(I)I
    .locals 14
    .parameter "handle"

    .prologue
    .line 923
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 924
    const/4 v12, 0x0

    .line 925
    .local v12, path:Ljava/lang/String;
    const/4 v10, 0x0

    .line 927
    .local v10, format:I
    const/4 v8, 0x0

    .line 929
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 931
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 934
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 935
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    .line 940
    if-eqz v12, :cond_0

    if-nez v10, :cond_3

    .line 941
    :cond_0
    const/16 v0, 0x2002

    .line 978
    if-eqz v8, :cond_1

    .line 979
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return v0

    .line 937
    :cond_2
    const/16 v0, 0x2009

    .line 978
    if-eqz v8, :cond_1

    .line 979
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 945
    :cond_3
    :try_start_1
    invoke-direct {p0, v12}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_4

    .line 946
    const/16 v0, 0x200d

    .line 978
    if-eqz v8, :cond_1

    .line 979
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 949
    :cond_4
    const/16 v0, 0x3001

    if-ne v10, v0, :cond_5

    .line 951
    :try_start_2
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 952
    .local v13, uri:Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const-string v2, "_data LIKE ?1 AND lower(substr(_data,1,?2))=lower(?3)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/%"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v0, v1, v13, v2, v3}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 959
    .end local v13           #uri:Landroid/net/Uri;
    :cond_5
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v13

    .line 960
    .restart local v13       #uri:Landroid/net/Uri;
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v13, v2, v3}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7

    .line 961
    const/16 v0, 0x3001

    if-eq v10, v0, :cond_6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v12, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/.nomedia"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    if-eqz v0, :cond_6

    .line 964
    const/4 v0, 0x0

    :try_start_3
    const-string v1, "/"

    invoke-virtual {v12, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 965
    .local v11, parentPath:Ljava/lang/String;
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const-string/jumbo v2, "unhide"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v11, v3}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 970
    .end local v11           #parentPath:Ljava/lang/String;
    :cond_6
    :goto_1
    const/16 v0, 0x2001

    .line 978
    if-eqz v8, :cond_1

    .line 979
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 966
    :catch_0
    move-exception v9

    .line 967
    .local v9, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to unhide/rescan for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 974
    .end local v9           #e:Landroid/os/RemoteException;
    .end local v13           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v9

    .line 975
    .restart local v9       #e:Landroid/os/RemoteException;
    :try_start_5
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in deleteFile"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 976
    const/16 v0, 0x2002

    .line 978
    if-eqz v8, :cond_1

    .line 979
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 972
    .end local v9           #e:Landroid/os/RemoteException;
    .restart local v13       #uri:Landroid/net/Uri;
    :cond_7
    const/16 v0, 0x2009

    .line 978
    if-eqz v8, :cond_1

    .line 979
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 978
    .end local v13           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_8

    .line 979
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method private endSendObject(Ljava/lang/String;IIZ)V
    .locals 9
    .parameter "path"
    .parameter "handle"
    .parameter "format"
    .parameter "succeeded"

    .prologue
    .line 307
    if-eqz p4, :cond_3

    .line 310
    const v4, 0xba05

    if-ne p3, v4, :cond_2

    .line 312
    move-object v2, p1

    .line 313
    .local v2, name:Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 314
    .local v1, lastSlash:I
    if-ltz v1, :cond_0

    .line 315
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 318
    :cond_0
    const-string v4, ".pla"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 319
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 322
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 323
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "_data"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v4, "format"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 326
    const-string v4, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 327
    const-string v4, "media_scanner_new_object_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 329
    :try_start_0
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    sget-object v6, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v4, v5, v6, v3}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .end local v1           #lastSlash:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 331
    .restart local v1       #lastSlash:I
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 332
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "MtpDatabase"

    const-string v5, "RemoteException in endSendObject"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 335
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #lastSlash:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_2
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-virtual {v4, p1, v5, p2, p3}, Landroid/media/MediaScanner;->scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 338
    :cond_3
    invoke-direct {p0, p2}, Landroid/mtp/MtpDatabase;->deleteFile(I)I

    goto :goto_0
.end method

.method private getDeviceProperty(I[J[C)I
    .locals 11
    .parameter "property"
    .parameter "outIntValue"
    .parameter "outStringValue"

    .prologue
    const/16 v7, 0x2001

    const/4 v10, 0x0

    .line 804
    sparse-switch p1, :sswitch_data_0

    .line 829
    const/16 v6, 0x200a

    :goto_0
    return v6

    .line 808
    :sswitch_0
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 809
    .local v4, value:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 810
    .local v3, length:I
    const/16 v6, 0xff

    if-le v3, v6, :cond_0

    .line 811
    const/16 v3, 0xff

    .line 813
    :cond_0
    invoke-virtual {v4, v10, v3, p3, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 814
    aput-char v10, p3, v3

    move v6, v7

    .line 815
    goto :goto_0

    .line 819
    .end local v3           #length:I
    .end local v4           #value:Ljava/lang/String;
    :sswitch_1
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "window"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 821
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v5

    .line 822
    .local v5, width:I
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v1

    .line 823
    .local v1, height:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 824
    .local v2, imageSize:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v10, v6, p3, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 825
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    aput-char v10, p3, v6

    move v6, v7

    .line 826
    goto :goto_0

    .line 804
    :sswitch_data_0
    .sparse-switch
        0x5003 -> :sswitch_1
        0xd401 -> :sswitch_0
        0xd402 -> :sswitch_0
    .end sparse-switch
.end method

.method private getNumObjects(III)I
    .locals 4
    .parameter "storageID"
    .parameter "format"
    .parameter "parent"

    .prologue
    .line 469
    const/4 v0, 0x0

    .line 471
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;

    move-result-object v0

    .line 472
    if-eqz v0, :cond_1

    .line 473
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 478
    if-eqz v0, :cond_0

    .line 479
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 482
    :cond_0
    :goto_0
    return v2

    .line 478
    :cond_1
    if-eqz v0, :cond_2

    .line 479
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 482
    :cond_2
    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    .line 475
    :catch_0
    move-exception v1

    .line 476
    .local v1, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in getNumObjects"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    if-eqz v0, :cond_2

    .line 479
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 478
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_3

    .line 479
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method private getObjectFilePath(I[C[J)I
    .locals 12
    .parameter "handle"
    .parameter "outFilePath"
    .parameter "outFileLengthFormat"

    .prologue
    const/16 v11, 0x2001

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 888
    if-nez p1, :cond_1

    .line 890
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1, p2, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 891
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    aput-char v2, p2, v0

    .line 892
    const-wide/16 v0, 0x0

    aput-wide v0, p3, v2

    .line 893
    const-wide/16 v0, 0x3001

    aput-wide v0, p3, v3

    move v0, v11

    .line 917
    :cond_0
    :goto_0
    return v0

    .line 896
    :cond_1
    const/4 v8, 0x0

    .line 898
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 900
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 901
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 902
    .local v10, path:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v1, p2, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 903
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    aput-char v1, p2, v0

    .line 906
    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    aput-wide v1, p3, v0

    .line 907
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, p3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    if-eqz v8, :cond_2

    .line 917
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v11

    goto :goto_0

    .line 910
    .end local v10           #path:Ljava/lang/String;
    :cond_3
    const/16 v0, 0x2009

    .line 916
    if-eqz v8, :cond_0

    .line 917
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 912
    :catch_0
    move-exception v9

    .line 913
    .local v9, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in getObjectFilePath"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 914
    const/16 v0, 0x2002

    .line 916
    if-eqz v8, :cond_0

    .line 917
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 916
    .end local v9           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 917
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private getObjectInfo(I[I[C[J)Z
    .locals 15
    .parameter "handle"
    .parameter "outStorageFormatParent"
    .parameter "outName"
    .parameter "outCreatedModified"

    .prologue
    .line 849
    const/4 v9, 0x0

    .line 851
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v4, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 853
    if-eqz v9, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 854
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, p2, v1

    .line 855
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, p2, v1

    .line 856
    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, p2, v1

    .line 859
    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 860
    .local v13, path:Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v13, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .line 861
    .local v12, lastSlash:I
    if-ltz v12, :cond_3

    add-int/lit8 v14, v12, 0x1

    .line 862
    .local v14, start:I
    :goto_0
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v11

    .line 863
    .local v11, end:I
    sub-int v1, v11, v14

    const/16 v2, 0xff

    if-le v1, v2, :cond_0

    .line 864
    add-int/lit16 v11, v14, 0xff

    .line 866
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v11, v0, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 867
    sub-int v1, v11, v14

    const/4 v2, 0x0

    aput-char v2, p3, v1

    .line 869
    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, p4, v1

    .line 870
    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, p4, v1

    .line 872
    const/4 v1, 0x0

    aget-wide v1, p4, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 873
    const/4 v1, 0x0

    const/4 v2, 0x1

    aget-wide v2, p4, v2

    aput-wide v2, p4, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    :cond_1
    const/4 v1, 0x1

    .line 880
    if-eqz v9, :cond_2

    .line 881
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 884
    .end local v11           #end:I
    .end local v12           #lastSlash:I
    .end local v13           #path:Ljava/lang/String;
    .end local v14           #start:I
    :cond_2
    :goto_1
    return v1

    .line 861
    .restart local v12       #lastSlash:I
    .restart local v13       #path:Ljava/lang/String;
    :cond_3
    const/4 v14, 0x0

    goto :goto_0

    .line 880
    .end local v12           #lastSlash:I
    .end local v13           #path:Ljava/lang/String;
    :cond_4
    if-eqz v9, :cond_5

    .line 881
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 884
    :cond_5
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 877
    :catch_0
    move-exception v10

    .line 878
    .local v10, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "MtpDatabase"

    const-string v2, "RemoteException in getObjectInfo"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 880
    if-eqz v9, :cond_5

    .line 881
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 880
    .end local v10           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_6

    .line 881
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method private getObjectList(III)[I
    .locals 8
    .parameter "storageID"
    .parameter "format"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 443
    const/4 v0, 0x0

    .line 445
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 446
    if-nez v0, :cond_2

    .line 461
    if-eqz v0, :cond_0

    .line 462
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v4, v5

    .line 465
    :cond_1
    :goto_0
    return-object v4

    .line 449
    :cond_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 450
    .local v1, count:I
    if-lez v1, :cond_4

    .line 451
    new-array v4, v1, [I

    .line 452
    .local v4, result:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 453
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 454
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    aput v6, v4, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 452
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 461
    :cond_3
    if-eqz v0, :cond_1

    .line 462
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 461
    .end local v3           #i:I
    .end local v4           #result:[I
    :cond_4
    if-eqz v0, :cond_5

    .line 462
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .end local v1           #count:I
    :cond_5
    :goto_2
    move-object v4, v5

    .line 465
    goto :goto_0

    .line 458
    :catch_0
    move-exception v2

    .line 459
    .local v2, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "MtpDatabase"

    const-string v7, "RemoteException in getObjectList"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 461
    if-eqz v0, :cond_5

    .line 462
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 461
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_6

    .line 462
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v5
.end method

.method private getObjectPropertyList(JIJII)Landroid/mtp/MtpPropertyList;
    .locals 6
    .parameter "handle"
    .parameter "format"
    .parameter "property"
    .parameter "groupCode"
    .parameter "depth"

    .prologue
    const/4 v3, 0x0

    .line 679
    if-eqz p6, :cond_0

    .line 680
    new-instance v1, Landroid/mtp/MtpPropertyList;

    const v2, 0xa807

    invoke-direct {v1, v3, v2}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 702
    :goto_0
    return-object v1

    .line 684
    :cond_0
    const-wide v1, 0xffffffffL

    cmp-long v1, p4, v1

    if-nez v1, :cond_2

    .line 685
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    .line 686
    .local v0, propertyGroup:Landroid/mtp/MtpPropertyGroup;
    if-nez v0, :cond_1

    .line 687
    invoke-direct {p0, p3}, Landroid/mtp/MtpDatabase;->getSupportedObjectProperties(I)[I

    move-result-object v5

    .line 688
    .local v5, propertyList:[I
    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    .end local v0           #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 690
    .restart local v0       #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    .end local v5           #propertyList:[I
    :cond_1
    :goto_1
    long-to-int v1, p1

    invoke-virtual {v0, v1, p3, p7}, Landroid/mtp/MtpPropertyGroup;->getPropertyList(III)Landroid/mtp/MtpPropertyList;

    move-result-object v1

    goto :goto_0

    .line 693
    .end local v0           #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    :cond_2
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpPropertyGroup;

    .line 694
    .restart local v0       #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    if-nez v0, :cond_1

    .line 695
    const/4 v1, 0x1

    new-array v5, v1, [I

    long-to-int v1, p4

    aput v1, v5, v3

    .line 696
    .restart local v5       #propertyList:[I
    new-instance v0, Landroid/mtp/MtpPropertyGroup;

    .end local v0           #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 698
    .restart local v0       #propertyGroup:Landroid/mtp/MtpPropertyGroup;
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    long-to-int v3, p4

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private getObjectReferences(I)[I
    .locals 14
    .parameter "handle"

    .prologue
    const/4 v13, 0x0

    .line 985
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v3, p1

    invoke-static {v0, v3, v4}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    .line 986
    .local v2, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 988
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    sget-object v3, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 989
    if-nez v8, :cond_2

    .line 1004
    if-eqz v8, :cond_0

    .line 1005
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v12, v13

    .line 1008
    :cond_1
    :goto_0
    return-object v12

    .line 992
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    .line 993
    .local v9, count:I
    if-lez v9, :cond_4

    .line 994
    new-array v12, v9, [I

    .line 995
    .local v12, result:[I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v9, :cond_3

    .line 996
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 997
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    aput v0, v12, v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 995
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1004
    :cond_3
    if-eqz v8, :cond_1

    .line 1005
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1004
    .end local v11           #i:I
    .end local v12           #result:[I
    :cond_4
    if-eqz v8, :cond_5

    .line 1005
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .end local v9           #count:I
    :cond_5
    :goto_2
    move-object v12, v13

    .line 1008
    goto :goto_0

    .line 1001
    :catch_0
    move-exception v10

    .line 1002
    .local v10, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in getObjectList"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1004
    if-eqz v8, :cond_5

    .line 1005
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1004
    .end local v10           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    .line 1005
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private getSupportedCaptureFormats()[I
    .locals 1

    .prologue
    .line 521
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSupportedDeviceProperties()[I
    .locals 1

    .prologue
    .line 668
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 0x4
        0x1t 0xd4t 0x0t 0x0t
        0x2t 0xd4t 0x0t 0x0t
        0x3t 0x50t 0x0t 0x0t
    .end array-data
.end method

.method private getSupportedObjectProperties(I)[I
    .locals 1
    .parameter "format"

    .prologue
    .line 644
    sparse-switch p1, :sswitch_data_0

    .line 663
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    :goto_0
    return-object v0

    .line 650
    :sswitch_0
    sget-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    goto :goto_0

    .line 654
    :sswitch_1
    sget-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    goto :goto_0

    .line 659
    :sswitch_2
    sget-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    goto :goto_0

    .line 661
    :sswitch_3
    sget-object v0, Landroid/mtp/MtpDatabase;->ALL_PROPERTIES:[I

    goto :goto_0

    .line 644
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x3008 -> :sswitch_0
        0x3009 -> :sswitch_0
        0x300b -> :sswitch_1
        0x3801 -> :sswitch_2
        0x3804 -> :sswitch_2
        0x3807 -> :sswitch_2
        0x380b -> :sswitch_2
        0xb901 -> :sswitch_0
        0xb902 -> :sswitch_0
        0xb903 -> :sswitch_0
        0xb981 -> :sswitch_1
        0xb984 -> :sswitch_1
    .end sparse-switch
.end method

.method private getSupportedPlaybackFormats()[I
    .locals 1

    .prologue
    .line 486
    const/16 v0, 0x1b

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 0x4
        0x0t 0x30t 0x0t 0x0t
        0x1t 0x30t 0x0t 0x0t
        0x4t 0x30t 0x0t 0x0t
        0x5t 0x30t 0x0t 0x0t
        0x8t 0x30t 0x0t 0x0t
        0x9t 0x30t 0x0t 0x0t
        0xbt 0x30t 0x0t 0x0t
        0x1t 0x38t 0x0t 0x0t
        0x2t 0x38t 0x0t 0x0t
        0x4t 0x38t 0x0t 0x0t
        0x7t 0x38t 0x0t 0x0t
        0x8t 0x38t 0x0t 0x0t
        0xbt 0x38t 0x0t 0x0t
        0xdt 0x38t 0x0t 0x0t
        0x1t 0xb9t 0x0t 0x0t
        0x2t 0xb9t 0x0t 0x0t
        0x3t 0xb9t 0x0t 0x0t
        0x82t 0xb9t 0x0t 0x0t
        0x83t 0xb9t 0x0t 0x0t
        0x84t 0xb9t 0x0t 0x0t
        0x5t 0xbat 0x0t 0x0t
        0x10t 0xbat 0x0t 0x0t
        0x11t 0xbat 0x0t 0x0t
        0x14t 0xbat 0x0t 0x0t
        0x82t 0xbat 0x0t 0x0t
        0x6t 0xb9t 0x0t 0x0t
        0x81t 0xb9t 0x0t 0x0t
    .end array-data
.end method

.method private inStorageSubDirectory(Ljava/lang/String;)Z
    .locals 7
    .parameter "path"

    .prologue
    .line 231
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v5, :cond_1

    const/4 v0, 0x1

    .line 245
    :cond_0
    :goto_0
    return v0

    .line 232
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 234
    :cond_2
    const/4 v0, 0x0

    .line 235
    .local v0, allowed:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 236
    .local v2, pathLength:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    if-nez v0, :cond_0

    .line 237
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v3, v5, v1

    .line 238
    .local v3, subdir:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 239
    .local v4, subdirLength:I
    if-ge v4, v2, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 242
    const/4 v0, 0x1

    .line 236
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initDeviceProperties(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 194
    const-string v10, "device-properties"

    .line 195
    .local v10, devicePropertiesName:Ljava/lang/String;
    const-string v1, "device-properties"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    .line 196
    const-string v1, "device-properties"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 198
    .local v9, databaseFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    const/4 v0, 0x0

    .line 202
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 204
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "device-properties"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_4

    .line 206
    const-string/jumbo v1, "properties"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "code"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 208
    if-eqz v8, :cond_4

    .line 209
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 210
    .local v11, e:Landroid/content/SharedPreferences$Editor;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 211
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 212
    .local v12, name:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 213
    .local v13, value:Ljava/lang/String;
    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    .end local v11           #e:Landroid/content/SharedPreferences$Editor;
    .end local v12           #name:Ljava/lang/String;
    .end local v13           #value:Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 219
    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "MtpDatabase"

    const-string v2, "failed to migrate device properties"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 224
    .end local v11           #e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    const-string v1, "device-properties"

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 226
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #c:Landroid/database/Cursor;
    :cond_2
    return-void

    .line 215
    .restart local v0       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8       #c:Landroid/database/Cursor;
    .local v11, e:Landroid/content/SharedPreferences$Editor;
    :cond_3
    :try_start_2
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 221
    .end local v11           #e:Landroid/content/SharedPreferences$Editor;
    :cond_4
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_5
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 221
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v1
.end method

.method private isStorageSubDirectory(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    const/4 v1, 0x0

    .line 251
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v1

    .line 252
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 253
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 254
    const/4 v1, 0x1

    goto :goto_0

    .line 252
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup()V
.end method

.method private renameFile(ILjava/lang/String;)I
    .locals 18
    .parameter "handle"
    .parameter "newName"

    .prologue
    .line 706
    const/4 v9, 0x0

    .line 709
    .local v9, c:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 710
    .local v15, path:Ljava/lang/String;
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v1

    .line 712
    .local v6, whereArgs:[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v4, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v1 .. v8}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v9

    .line 714
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 715
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    .line 721
    :cond_0
    if-eqz v9, :cond_1

    .line 722
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 725
    :cond_1
    if-nez v15, :cond_4

    .line 726
    const/16 v1, 0x2009

    .line 789
    :cond_2
    :goto_0
    return v1

    .line 717
    :catch_0
    move-exception v10

    .line 718
    .local v10, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "MtpDatabase"

    const-string v2, "RemoteException in getObjectFilePath"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 719
    const/16 v1, 0x2002

    .line 721
    if-eqz v9, :cond_2

    .line 722
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 721
    .end local v10           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    if-eqz v9, :cond_3

    .line 722
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    .line 730
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 731
    const/16 v1, 0x200d

    goto :goto_0

    .line 735
    :cond_5
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 736
    .local v14, oldFile:Ljava/io/File;
    const/16 v1, 0x2f

    invoke-virtual {v15, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .line 737
    .local v11, lastSlash:I
    const/4 v1, 0x1

    if-gt v11, v1, :cond_6

    .line 738
    const/16 v1, 0x2002

    goto :goto_0

    .line 740
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    add-int/lit8 v3, v11, 0x1

    invoke-virtual {v15, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 741
    .local v13, newPath:Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 742
    .local v12, newFile:Ljava/io/File;
    invoke-virtual {v14, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v16

    .line 743
    .local v16, success:Z
    if-nez v16, :cond_7

    .line 744
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "renaming "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const/16 v1, 0x2002

    goto/16 :goto_0

    .line 749
    :cond_7
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 750
    .local v4, values:Landroid/content/ContentValues;
    const-string v1, "_data"

    invoke-virtual {v4, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    const/16 v17, 0x0

    .line 755
    .local v17, updated:I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v5, "_id=?"

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v17

    .line 759
    :goto_1
    if-nez v17, :cond_8

    .line 760
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to update path for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-virtual {v12, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 763
    const/16 v1, 0x2002

    goto/16 :goto_0

    .line 756
    :catch_1
    move-exception v10

    .line 757
    .restart local v10       #e:Landroid/os/RemoteException;
    const-string v1, "MtpDatabase"

    const-string v2, "RemoteException in mMediaProvider.update"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 767
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_8
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 769
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "."

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 772
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const-string/jumbo v3, "unhide"

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v13, v5}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 789
    :cond_9
    :goto_2
    const/16 v1, 0x2001

    goto/16 :goto_0

    .line 773
    :catch_2
    move-exception v10

    .line 774
    .restart local v10       #e:Landroid/os/RemoteException;
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to unhide/rescan for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 779
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_a
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v13, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".nomedia"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 782
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const-string/jumbo v3, "unhide"

    invoke-virtual {v14}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v1, v2, v3, v5, v7}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 783
    :catch_3
    move-exception v10

    .line 784
    .restart local v10       #e:Landroid/os/RemoteException;
    const-string v1, "MtpDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to unhide/rescan for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private sessionEnded()V
    .locals 3

    .prologue
    .line 1036
    iget-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    if-eqz v0, :cond_0

    .line 1037
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.action.MTP_SESSION_END"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1038
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1040
    :cond_0
    return-void
.end method

.method private sessionStarted()V
    .locals 1

    .prologue
    .line 1032
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1033
    return-void
.end method

.method private setDeviceProperty(IJLjava/lang/String;)I
    .locals 2
    .parameter "property"
    .parameter "intValue"
    .parameter "stringValue"

    .prologue
    .line 834
    packed-switch p1, :pswitch_data_0

    .line 844
    const/16 v1, 0x200a

    :goto_0
    return v1

    .line 838
    :pswitch_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 839
    .local v0, e:Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 840
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2001

    goto :goto_0

    :cond_0
    const/16 v1, 0x2002

    goto :goto_0

    .line 834
    nop

    :pswitch_data_0
    .packed-switch 0xd401
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setObjectProperty(IIJLjava/lang/String;)I
    .locals 1
    .parameter "handle"
    .parameter "property"
    .parameter "intValue"
    .parameter "stringValue"

    .prologue
    .line 794
    packed-switch p2, :pswitch_data_0

    .line 799
    const v0, 0xa80a

    :goto_0
    return v0

    .line 796
    :pswitch_0
    invoke-direct {p0, p1, p5}, Landroid/mtp/MtpDatabase;->renameFile(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 794
    :pswitch_data_0
    .packed-switch 0xdc07
        :pswitch_0
    .end packed-switch
.end method

.method private setObjectReferences(I[I)I
    .locals 9
    .parameter "handle"
    .parameter "references"

    .prologue
    .line 1012
    const/4 v6, 0x1

    iput-boolean v6, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1013
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    int-to-long v7, p1

    invoke-static {v6, v7, v8}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    .line 1014
    .local v3, uri:Landroid/net/Uri;
    array-length v0, p2

    .line 1015
    .local v0, count:I
    new-array v5, v0, [Landroid/content/ContentValues;

    .line 1016
    .local v5, valuesList:[Landroid/content/ContentValues;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1017
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1018
    .local v4, values:Landroid/content/ContentValues;
    const-string v6, "_id"

    aget v7, p2, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1019
    aput-object v4, v5, v2

    .line 1016
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1022
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_0
    :try_start_0
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v7, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    invoke-interface {v6, v7, v3, v5}, Landroid/content/IContentProvider;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lez v6, :cond_1

    .line 1023
    const/16 v6, 0x2001

    .line 1028
    :goto_1
    return v6

    .line 1025
    :catch_0
    move-exception v1

    .line 1026
    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "MtpDatabase"

    const-string v7, "RemoteException in setObjectReferences"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1028
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    const/16 v6, 0x2002

    goto :goto_1
.end method


# virtual methods
.method public addStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .parameter "storage"

    .prologue
    .line 186
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 179
    :try_start_0
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 183
    return-void

    .line 181
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .parameter "storage"

    .prologue
    .line 190
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    return-void
.end method
