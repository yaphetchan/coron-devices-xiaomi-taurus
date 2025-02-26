.class public Lcom/android/internal/app/PlatLogoActivity;
.super Landroid/app/Activity;
.source "PlatLogoActivity.java"


# static fields
.field static final BGCOLOR:I = -0x12e2dc


# instance fields
.field mContent:Landroid/widget/FrameLayout;

.field mCount:I

.field final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 54
    .local v10, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/android/internal/app/PlatLogoActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 56
    const-string v0, "sans-serif"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    .line 57
    .local v6, bold:Landroid/graphics/Typeface;
    const-string v0, "sans-serif-light"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    .line 59
    .local v7, light:Landroid/graphics/Typeface;
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mContent:Landroid/widget/FrameLayout;

    .line 60
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mContent:Landroid/widget/FrameLayout;

    const/high16 v1, -0x4000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 62
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    const/4 v1, -0x2

    invoke-direct {v8, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 65
    .local v8, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 67
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 68
    .local v2, logo:Landroid/widget/ImageView;
    const v0, 0x10804a9

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 70
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 73
    .local v3, bg:Landroid/view/View;
    const v0, -0x12e2dc

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 74
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 76
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 78
    .local v4, letter:Landroid/widget/TextView;
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 79
    const/high16 v0, 0x4396

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 80
    const/4 v0, -0x1

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    const/16 v0, 0x11

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 82
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v12, 0x1

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    const/high16 v0, 0x4080

    iget v1, v10, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v11, v0

    .line 86
    .local v11, p:I
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 87
    .local v5, tv:Landroid/widget/TextView;
    if-eqz v7, :cond_0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 88
    :cond_0
    const/high16 v0, 0x41f0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 89
    invoke-virtual {v5, v11, v11, v11, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 90
    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 91
    const/16 v0, 0x11

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 92
    new-instance v0, Landroid/text/method/AllCapsTransformationMethod;

    invoke-direct {v0, p0}, Landroid/text/method/AllCapsTransformationMethod;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const/4 v0, 0x4

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 97
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 101
    .local v9, lp2:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v0, 0x51

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 102
    mul-int/lit8 v0, v11, 0xa

    iput v0, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 104
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mContent:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/internal/app/PlatLogoActivity$1;

    invoke-direct {v1, p0, v4}, Lcom/android/internal/app/PlatLogoActivity$1;-><init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iget-object v12, p0, Lcom/android/internal/app/PlatLogoActivity;->mContent:Landroid/widget/FrameLayout;

    new-instance v0, Lcom/android/internal/app/PlatLogoActivity$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/app/PlatLogoActivity$2;-><init>(Lcom/android/internal/app/PlatLogoActivity;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    invoke-virtual {v12, v0}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 152
    new-instance v0, Lcom/android/internal/app/PlatLogoActivity$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/PlatLogoActivity$3;-><init>(Lcom/android/internal/app/PlatLogoActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 176
    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity;->mContent:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/PlatLogoActivity;->setContentView(Landroid/view/View;)V

    .line 177
    return-void
.end method
