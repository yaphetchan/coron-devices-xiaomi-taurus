.class public Landroid/util/Lunar;
.super Ljava/lang/Object;
.source "Lunar.java"


# static fields
.field static final lunarInfo:[J


# instance fields
.field private chineseDateFormat:Ljava/text/SimpleDateFormat;

.field private chineseNumber:[Ljava/lang/String;

.field private day:I

.field private leap:Z

.field private lunarMonthName:[Ljava/lang/String;

.field private mCalendar:Ljava/util/Calendar;

.field private month:I

.field private res:Landroid/content/res/Resources;

.field private year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/16 v0, 0x96

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Landroid/util/Lunar;->lunarInfo:[J

    return-void

    :array_0
    .array-data 0x8
        0xd8t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd5t 0x54t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x54t 0x65t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x9at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd2t 0x55t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb6t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x55t 0xd2t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xd6t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa2t 0xadt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x95t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x77t 0x49t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb5t 0xb4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0x6at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x6dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x54t 0xabt 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x2bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x95t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf2t 0x52t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x66t 0x65t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xeat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x95t 0x6et 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x5at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x2bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe3t 0x86t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0x92t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd7t 0xc8t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xc9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa6t 0xd8t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb4t 0xa5t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x25t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x92t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb2t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x57t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x6ct 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x55t 0x53t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x4dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x73t 0x45t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x52t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa8t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xe9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x6at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa6t 0xaet 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xabt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe4t 0xaat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x52t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x63t 0xf2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x57t 0x5bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x96t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd5t 0x4dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd4t 0xd4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x58t 0xd5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa6t 0x95t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x95t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x74t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x7at 0xb2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0x6at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x6dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x46t 0xaft 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xabt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x95t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf5t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa3t 0x74t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xeat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x58t 0x6bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xc0t 0x55t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xabt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd5t 0x96t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0x92t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xc9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x54t 0xd9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xdat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x52t 0x75t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb7t 0xabt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x25t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x92t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb5t 0xcat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xb4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa4t 0xbat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xadt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd9t 0x55t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x76t 0x51t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x52t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0xa9t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x54t 0x79t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x6at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xadt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x52t 0x5bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe6t 0xa6t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x60t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x65t 0xeat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x30t 0xd5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x5at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa3t 0x76t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x96t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd7t 0x4bt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x4at 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb6t 0xd0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xd2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0xd5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x45t 0xddt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xb5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x56t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb2t 0x55t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0x49t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x77t 0xa5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x50t 0xaat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x55t 0xb2t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x20t 0x6dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0xadt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 19
    .parameter "cal"

    .prologue
    .line 110
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v11, 0x0

    .line 113
    .local v11, leapMonth:I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/util/Lunar;->res:Landroid/content/res/Resources;

    .line 114
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/util/Lunar;->mCalendar:Ljava/util/Calendar;

    .line 115
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/util/Lunar;->res:Landroid/content/res/Resources;

    const v16, 0x1070011

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/util/Lunar;->chineseNumber:[Ljava/lang/String;

    .line 116
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/util/Lunar;->res:Landroid/content/res/Resources;

    const v16, 0x1070016

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/util/Lunar;->lunarMonthName:[Ljava/lang/String;

    .line 117
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/util/Lunar;->res:Landroid/content/res/Resources;

    const v16, 0x104060f

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 118
    .local v7, format1:Ljava/lang/String;
    new-instance v15, Ljava/text/SimpleDateFormat;

    invoke-direct {v15, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/util/Lunar;->chineseDateFormat:Ljava/text/SimpleDateFormat;

    .line 119
    const/4 v2, 0x0

    .line 121
    .local v2, baseDate:Ljava/util/Date;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/util/Lunar;->res:Landroid/content/res/Resources;

    const v16, 0x1040610

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 122
    .local v8, format2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/util/Lunar;->chineseDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v15, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 126
    .end local v8           #format2:Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    sub-long v15, v15, v17

    const-wide/32 v17, 0x5265c00

    div-long v15, v15, v17

    long-to-int v13, v15

    .line 127
    .local v13, offset:I
    add-int/lit8 v3, v13, 0x28

    .line 128
    .local v3, dayCyl:I
    const/16 v12, 0xe

    .line 129
    .local v12, monCyl:I
    const/4 v5, 0x0

    .line 130
    .local v5, daysOfYear:I
    const/16 v10, 0x76c

    .local v10, iYear:I
    :goto_1
    const/16 v15, 0x802

    if-ge v10, v15, :cond_0

    if-lez v13, :cond_0

    .line 131
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/util/Lunar;->yearDays(I)I

    move-result v5

    .line 132
    sub-int/2addr v13, v5

    .line 133
    add-int/lit8 v12, v12, 0xc

    .line 130
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 123
    .end local v3           #dayCyl:I
    .end local v5           #daysOfYear:I
    .end local v10           #iYear:I
    .end local v12           #monCyl:I
    .end local v13           #offset:I
    :catch_0
    move-exception v6

    .line 124
    .local v6, e:Ljava/text/ParseException;
    invoke-virtual {v6}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 135
    .end local v6           #e:Ljava/text/ParseException;
    .restart local v3       #dayCyl:I
    .restart local v5       #daysOfYear:I
    .restart local v10       #iYear:I
    .restart local v12       #monCyl:I
    .restart local v13       #offset:I
    :cond_0
    if-gez v13, :cond_1

    .line 136
    add-int/2addr v13, v5

    .line 137
    add-int/lit8 v10, v10, -0x1

    .line 138
    add-int/lit8 v12, v12, -0xc

    .line 140
    :cond_1
    move-object/from16 v0, p0

    iput v10, v0, Landroid/util/Lunar;->year:I

    .line 141
    add-int/lit16 v14, v10, -0x748

    .line 142
    .local v14, yearCyl:I
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/util/Lunar;->leapMonth(I)I

    move-result v11

    .line 143
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/util/Lunar;->leap:Z

    .line 144
    const/4 v4, 0x0

    .line 145
    .local v4, daysOfMonth:I
    const/4 v9, 0x1

    .local v9, iMonth:I
    :goto_2
    const/16 v15, 0xd

    if-ge v9, v15, :cond_5

    if-lez v13, :cond_5

    .line 146
    if-lez v11, :cond_4

    add-int/lit8 v15, v11, 0x1

    if-ne v9, v15, :cond_4

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/util/Lunar;->leap:Z

    if-nez v15, :cond_4

    .line 147
    add-int/lit8 v9, v9, -0x1

    .line 148
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/util/Lunar;->leap:Z

    .line 149
    move-object/from16 v0, p0

    iget v15, v0, Landroid/util/Lunar;->year:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/util/Lunar;->leapDays(I)I

    move-result v4

    .line 152
    :goto_3
    sub-int/2addr v13, v4

    .line 153
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/util/Lunar;->leap:Z

    if-eqz v15, :cond_2

    add-int/lit8 v15, v11, 0x1

    if-ne v9, v15, :cond_2

    .line 154
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/util/Lunar;->leap:Z

    .line 155
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/util/Lunar;->leap:Z

    if-nez v15, :cond_3

    .line 156
    add-int/lit8 v12, v12, 0x1

    .line 145
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 151
    :cond_4
    move-object/from16 v0, p0

    iget v15, v0, Landroid/util/Lunar;->year:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v9}, Landroid/util/Lunar;->monthDays(II)I

    move-result v4

    goto :goto_3

    .line 158
    :cond_5
    if-nez v13, :cond_6

    if-lez v11, :cond_6

    add-int/lit8 v15, v11, 0x1

    if-ne v9, v15, :cond_6

    .line 159
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/util/Lunar;->leap:Z

    if-eqz v15, :cond_8

    .line 160
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/util/Lunar;->leap:Z

    .line 167
    :cond_6
    :goto_4
    if-gez v13, :cond_7

    .line 168
    add-int/2addr v13, v4

    .line 169
    add-int/lit8 v9, v9, -0x1

    .line 170
    add-int/lit8 v12, v12, -0x1

    .line 172
    :cond_7
    move-object/from16 v0, p0

    iput v9, v0, Landroid/util/Lunar;->month:I

    .line 173
    add-int/lit8 v15, v13, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/util/Lunar;->day:I

    .line 174
    return-void

    .line 162
    :cond_8
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/util/Lunar;->leap:Z

    .line 163
    add-int/lit8 v9, v9, -0x1

    .line 164
    add-int/lit8 v12, v12, -0x1

    goto :goto_4
.end method

.method private cyclicalm(I)Ljava/lang/String;
    .locals 4
    .parameter "num"

    .prologue
    .line 100
    iget-object v2, p0, Landroid/util/Lunar;->res:Landroid/content/res/Resources;

    const v3, 0x107000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, Gan:[Ljava/lang/String;
    iget-object v2, p0, Landroid/util/Lunar;->res:Landroid/content/res/Resources;

    const v3, 0x1070010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, Zhi:[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v3, p1, 0xa

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    rem-int/lit8 v3, p1, 0xc

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private leapDays(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/util/Lunar;->leapMonth(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    sget-object v0, Landroid/util/Lunar;->lunarInfo:[J

    add-int/lit16 v1, p1, -0x76c

    aget-wide v0, v0, v1

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 76
    const/16 v0, 0x1e

    .line 80
    :goto_0
    return v0

    .line 78
    :cond_0
    const/16 v0, 0x1d

    goto :goto_0

    .line 80
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private leapMonth(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 84
    sget-object v0, Landroid/util/Lunar;->lunarInfo:[J

    add-int/lit16 v1, p1, -0x76c

    aget-wide v0, v0, v1

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private monthDays(II)I
    .locals 4
    .parameter "y"
    .parameter "m"

    .prologue
    .line 88
    sget-object v0, Landroid/util/Lunar;->lunarInfo:[J

    add-int/lit16 v1, p1, -0x76c

    aget-wide v0, v0, v1

    const/high16 v2, 0x1

    shr-int/2addr v2, p2

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 89
    const/16 v0, 0x1d

    .line 91
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method private yearDays(I)I
    .locals 6
    .parameter "y"

    .prologue
    .line 65
    const/16 v1, 0x15c

    .line 66
    .local v1, sum:I
    const v0, 0x8000

    .local v0, i:I
    :goto_0
    const/16 v2, 0x8

    if-le v0, v2, :cond_1

    .line 67
    sget-object v2, Landroid/util/Lunar;->lunarInfo:[J

    add-int/lit16 v3, p1, -0x76c

    aget-wide v2, v2, v3

    int-to-long v4, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 68
    add-int/lit8 v1, v1, 0x1

    .line 66
    :cond_0
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    :cond_1
    invoke-direct {p0, p1}, Landroid/util/Lunar;->leapDays(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method


# virtual methods
.method public animalsYear()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    iget-object v1, p0, Landroid/util/Lunar;->res:Landroid/content/res/Resources;

    const v2, 0x107000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, Animals:[Ljava/lang/String;
    iget v1, p0, Landroid/util/Lunar;->year:I

    add-int/lit8 v1, v1, -0x4

    rem-int/lit8 v1, v1, 0xc

    aget-object v1, v0, v1

    return-object v1
.end method

.method public cyclical()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    iget v1, p0, Landroid/util/Lunar;->year:I

    add-int/lit16 v1, v1, -0x76c

    add-int/lit8 v0, v1, 0x24

    .line 107
    .local v0, num:I
    invoke-direct {p0, v0}, Landroid/util/Lunar;->cyclicalm(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getChinaDayString(I)Ljava/lang/String;
    .locals 5
    .parameter "day"

    .prologue
    const/16 v4, 0x1e

    .line 177
    iget-object v2, p0, Landroid/util/Lunar;->res:Landroid/content/res/Resources;

    const v3, 0x1070012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, chineseTen:[Ljava/lang/String;
    rem-int/lit8 v2, p1, 0xa

    if-nez v2, :cond_0

    const/16 v1, 0x9

    .line 179
    .local v1, n:I
    :goto_0
    if-le p1, v4, :cond_1

    .line 180
    const-string v2, ""

    .line 188
    :goto_1
    return-object v2

    .line 178
    .end local v1           #n:I
    :cond_0
    rem-int/lit8 v2, p1, 0xa

    add-int/lit8 v1, v2, -0x1

    goto :goto_0

    .line 181
    .restart local v1       #n:I
    :cond_1
    const/16 v2, 0xa

    if-ne p1, v2, :cond_2

    .line 182
    iget-object v2, p0, Landroid/util/Lunar;->res:Landroid/content/res/Resources;

    const v3, 0x104060c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 183
    :cond_2
    const/16 v2, 0x14

    if-ne p1, v2, :cond_3

    .line 184
    iget-object v2, p0, Landroid/util/Lunar;->res:Landroid/content/res/Resources;

    const v3, 0x104060d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 185
    :cond_3
    if-ne p1, v4, :cond_4

    .line 186
    iget-object v2, p0, Landroid/util/Lunar;->res:Landroid/content/res/Resources;

    const v3, 0x104060e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 188
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v3, p1, 0xa

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/util/Lunar;->chineseNumber:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public isBigMonth(Ljava/lang/String;)Z
    .locals 2
    .parameter "lunarFestivalStr"

    .prologue
    .line 201
    iget v0, p0, Landroid/util/Lunar;->year:I

    iget v1, p0, Landroid/util/Lunar;->month:I

    invoke-direct {p0, v0, v1}, Landroid/util/Lunar;->monthDays(II)I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    .line 202
    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 192
    iget-object v3, p0, Landroid/util/Lunar;->res:Landroid/content/res/Resources;

    const v4, 0x1040608

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, year1:Ljava/lang/String;
    iget-object v3, p0, Landroid/util/Lunar;->res:Landroid/content/res/Resources;

    const v4, 0x104060b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, run1:Ljava/lang/String;
    iget-object v3, p0, Landroid/util/Lunar;->res:Landroid/content/res/Resources;

    const v4, 0x1040609

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, month1:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/util/Lunar;->cyclical()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/util/Lunar;->animalsYear()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/util/Lunar;->leap:Z

    if-eqz v4, :cond_0

    .end local v1           #run1:Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Lunar;->lunarMonthName:[Ljava/lang/String;

    iget v5, p0, Landroid/util/Lunar;->month:I

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/util/Lunar;->day:I

    invoke-virtual {p0, v4}, Landroid/util/Lunar;->getChinaDayString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .restart local v1       #run1:Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method
