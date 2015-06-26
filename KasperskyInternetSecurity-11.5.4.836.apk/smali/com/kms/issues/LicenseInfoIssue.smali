.class public final Lcom/kms/issues/LicenseInfoIssue;
.super LoY;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/kms/issues/LicenseInfoIssue;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kms/issues/LicenseInfoIssue;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;)V
    .locals 4

    .prologue
    .line 27
    sget-object v0, Lcom/kms/issues/LicenseInfoIssue;->a:Ljava/lang/String;

    sget-object v1, Lcom/kms/issues/IssueType;->Info:Lcom/kms/issues/IssueType;

    # getter for: Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;->mTitleResId:I
    invoke-static {p1}, Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;->access$000(Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;)I

    move-result v2

    const v3, 0x7f0200be

    invoke-direct {p0, v0, v1, v2, v3}, LoY;-><init>(Ljava/lang/String;Lcom/kms/issues/IssueType;II)V

    .line 28
    iput-object p1, p0, Lcom/kms/issues/LicenseInfoIssue;->b:Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;

    .line 29
    return-void
.end method

.method public static a()Lcom/kms/issues/LicenseInfoIssue;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/kms/issues/LicenseInfoIssue;

    sget-object v1, Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;->Free:Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;

    invoke-direct {v0, v1}, Lcom/kms/issues/LicenseInfoIssue;-><init>(Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;)V

    return-object v0
.end method

.method public static b()Lcom/kms/issues/LicenseInfoIssue;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/kms/issues/LicenseInfoIssue;

    sget-object v1, Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;->Trial:Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;

    invoke-direct {v0, v1}, Lcom/kms/issues/LicenseInfoIssue;-><init>(Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;)V

    return-object v0
.end method

.method public static g()Lcom/kms/issues/LicenseInfoIssue;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/kms/issues/LicenseInfoIssue;

    sget-object v1, Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;->Premium:Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;

    invoke-direct {v0, v1}, Lcom/kms/issues/LicenseInfoIssue;-><init>(Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v8, 0x8

    .line 90
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 91
    const v1, 0x7f030055

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 92
    invoke-static {}, LjJ;->m()LbG;

    move-result-object v0

    const-string v1, "Roboto-Light"

    invoke-virtual {v0, v1}, LbG;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    .line 94
    const v0, 0x7f0b00f8

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 97
    const v1, 0x7f0b00f9

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 98
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 100
    const v2, 0x7f0b00fa

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 101
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 103
    const v3, 0x7f0b00fb

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 104
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 106
    const v4, 0x7f0b00fc

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 107
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 109
    invoke-virtual {p0}, Lcom/kms/issues/LicenseInfoIssue;->d()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 113
    sget-object v6, LpW;->a:[I

    iget-object v7, p0, Lcom/kms/issues/LicenseInfoIssue;->b:Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;

    invoke-virtual {v7}, Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 144
    :goto_0
    return-object v5

    .line 116
    :pswitch_0
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 125
    :pswitch_1
    invoke-static {}, LjJ;->d()Ltg;

    move-result-object v6

    invoke-interface {v6}, Ltg;->a()LsW;

    move-result-object v6

    .line 127
    invoke-interface {v6}, LsW;->h()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 128
    const v7, 0x7f070053

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v6}, Ltl;->a(LsW;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v0, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    const v1, 0x7f070054

    new-array v7, v11, [Ljava/lang/Object;

    invoke-interface {v6}, LsW;->e()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v0, v1, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :goto_1
    const v1, 0x7f070055

    new-array v2, v11, [Ljava/lang/Object;

    invoke-interface {v6}, LsW;->g()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const v1, 0x7f070056

    new-array v2, v11, [Ljava/lang/Object;

    invoke-static {}, Lcom/kms/kmsshared/Utils;->i()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final d()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 68
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    sget-object v1, LpW;->a:[I

    iget-object v2, p0, Lcom/kms/issues/LicenseInfoIssue;->b:Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;

    invoke-virtual {v2}, Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 82
    const-string v0, ""

    .line 85
    :goto_0
    return-object v0

    .line 73
    :pswitch_0
    const v1, 0x7f070050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 76
    :pswitch_1
    const v1, 0x7f070051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    :pswitch_2
    const v1, 0x7f070052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 149
    sget-object v0, LpW;->a:[I

    iget-object v1, p0, Lcom/kms/issues/LicenseInfoIssue;->b:Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;

    invoke-virtual {v1}, Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 158
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 152
    :pswitch_0
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->LicensePurchaseRequested:Lcom/kms/UiEventType;

    invoke-virtual {v1}, Lcom/kms/UiEventType;->newEvent()Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 156
    :pswitch_1
    return-void

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 45
    invoke-static {}, LjJ;->d()Ltg;

    move-result-object v0

    invoke-interface {v0}, Ltg;->a()LsW;

    move-result-object v0

    .line 46
    invoke-interface {v0}, LsW;->e()I

    move-result v1

    .line 47
    sget-object v2, LpW;->a:[I

    iget-object v3, p0, Lcom/kms/issues/LicenseInfoIssue;->b:Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;

    invoke-virtual {v3}, Lcom/kms/issues/LicenseInfoIssue$LicenseInfoIssueType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 62
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 49
    :pswitch_0
    invoke-super {p0}, LoY;->f()Ljava/lang/CharSequence;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    .line 51
    :pswitch_1
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070044

    const v3, 0x7f070045

    const v4, 0x7f070046

    invoke-static {v1, v2, v3, v4}, Lcom/kms/kmsshared/Utils;->a(IIII)I

    move-result v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :pswitch_2
    invoke-interface {v0}, LsW;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070047

    const v3, 0x7f070048

    const v4, 0x7f070049

    invoke-static {v1, v2, v3, v4}, Lcom/kms/kmsshared/Utils;->a(IIII)I

    move-result v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
