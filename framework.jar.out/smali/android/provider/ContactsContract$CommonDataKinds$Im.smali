.class public final Landroid/provider/ContactsContract$CommonDataKinds$Im;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Im"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/im"

.field public static final CUSTOM_PROTOCOL:Ljava/lang/String; = "data6"

.field public static final PROTOCOL:Ljava/lang/String; = "data5"

.field public static final PROTOCOL_AIM:I = 0x0

.field public static final PROTOCOL_CUSTOM:I = -0x1

.field public static final PROTOCOL_GOOGLE_TALK:I = 0x5

.field public static final PROTOCOL_ICQ:I = 0x6

.field public static final PROTOCOL_JABBER:I = 0x7

.field public static final PROTOCOL_MSN:I = 0x1

.field public static final PROTOCOL_NETMEETING:I = 0x8

.field public static final PROTOCOL_QQ:I = 0x4

.field public static final PROTOCOL_SKYPE:I = 0x3

.field public static final PROTOCOL_YAHOO:I = 0x2

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_WORK:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "res"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 6167
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6171
    .end local p2
    :goto_0
    return-object p2

    .line 6170
    .restart local p2
    :cond_0
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    move-result v0

    .line 6171
    .local v0, labelRes:I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0
.end method

.method public static final getProtocolLabelResource(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 6146
    packed-switch p0, :pswitch_data_0

    .line 6156
    const v0, 0x10402ea

    :goto_0
    return v0

    .line 6147
    :pswitch_0
    const v0, 0x10402eb

    goto :goto_0

    .line 6148
    :pswitch_1
    const v0, 0x10402ec

    goto :goto_0

    .line 6149
    :pswitch_2
    const v0, 0x10402ed

    goto :goto_0

    .line 6150
    :pswitch_3
    const v0, 0x10402ee

    goto :goto_0

    .line 6151
    :pswitch_4
    const v0, 0x10402ef

    goto :goto_0

    .line 6152
    :pswitch_5
    const v0, 0x10402f0

    goto :goto_0

    .line 6153
    :pswitch_6
    const v0, 0x10402f1

    goto :goto_0

    .line 6154
    :pswitch_7
    const v0, 0x10402f2

    goto :goto_0

    .line 6155
    :pswitch_8
    const v0, 0x10402f3

    goto :goto_0

    .line 6146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "res"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 6133
    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6137
    .end local p2
    :goto_0
    return-object p2

    .line 6136
    .restart local p2
    :cond_0
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getTypeLabelResource(I)I

    move-result v0

    .line 6137
    .local v0, labelRes:I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0
.end method

.method public static final getTypeLabelResource(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 6118
    packed-switch p0, :pswitch_data_0

    .line 6122
    const v0, 0x10402e6

    :goto_0
    return v0

    .line 6119
    :pswitch_0
    const v0, 0x10402e7

    goto :goto_0

    .line 6120
    :pswitch_1
    const v0, 0x10402e8

    goto :goto_0

    .line 6121
    :pswitch_2
    const v0, 0x10402e9

    goto :goto_0

    .line 6118
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
