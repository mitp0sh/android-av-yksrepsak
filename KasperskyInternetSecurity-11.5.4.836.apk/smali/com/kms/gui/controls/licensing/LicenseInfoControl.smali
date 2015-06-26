.class public Lcom/kms/gui/controls/licensing/LicenseInfoControl;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/view/View;

.field private c:Lcom/kms/gui/controls/Counter;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->a(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->a(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0, p1}, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->a(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->d:Landroid/view/View;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->a:Landroid/widget/TextView;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->b:Landroid/view/View;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x7f0b0191

    invoke-virtual {p0, v2}, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->findViewById(I)Landroid/view/View;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lfb;->a([Landroid/view/View;)V

    .line 88
    new-array v0, v4, [Landroid/view/View;

    const v1, 0x7f0b0190

    invoke-virtual {p0, v1}, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lfb;->b([Landroid/view/View;)V

    .line 89
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->c:Lcom/kms/gui/controls/Counter;

    const v1, 0x7f020125

    invoke-virtual {v0, v1}, Lcom/kms/gui/controls/Counter;->setNoValueBackground(I)V

    .line 90
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->c:Lcom/kms/gui/controls/Counter;

    invoke-virtual {v0}, Lcom/kms/gui/controls/Counter;->a()V

    .line 91
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 50
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 51
    const v1, 0x7f030092

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 53
    const v0, 0x7f0b0195

    invoke-virtual {p0, v0}, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->d:Landroid/view/View;

    .line 55
    invoke-virtual {p0}, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->d:Landroid/view/View;

    new-instance v1, Lof;

    invoke-direct {v1, p0}, Lof;-><init>(Lcom/kms/gui/controls/licensing/LicenseInfoControl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    const v0, 0x7f0b0194

    invoke-virtual {p0, v0}, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->a:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f0b0193

    invoke-virtual {p0, v0}, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->b:Landroid/view/View;

    .line 70
    const v0, 0x7f0b018e

    invoke-virtual {p0, v0}, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kms/gui/controls/Counter;

    iput-object v0, p0, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->c:Lcom/kms/gui/controls/Counter;

    goto :goto_0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->a:Landroid/widget/TextView;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->b:Landroid/view/View;

    aput-object v1, v0, v3

    const v1, 0x7f0b0190

    invoke-virtual {p0, v1}, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lfb;->a([Landroid/view/View;)V

    .line 95
    new-array v0, v4, [Landroid/view/View;

    iget-object v1, p0, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->d:Landroid/view/View;

    aput-object v1, v0, v2

    const v1, 0x7f0b0191

    invoke-virtual {p0, v1}, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Lfb;->b([Landroid/view/View;)V

    .line 96
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->c:Lcom/kms/gui/controls/Counter;

    const v1, 0x7f020124

    invoke-virtual {v0, v1}, Lcom/kms/gui/controls/Counter;->setNoValueBackground(I)V

    .line 97
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->c:Lcom/kms/gui/controls/Counter;

    invoke-virtual {v0}, Lcom/kms/gui/controls/Counter;->a()V

    .line 98
    return-void
.end method

.method private b(LaC;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 101
    new-array v0, v6, [Landroid/view/View;

    const v1, 0x7f0b0191

    invoke-virtual {p0, v1}, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v5

    invoke-static {v0}, Lfb;->a([Landroid/view/View;)V

    .line 102
    new-array v0, v7, [Landroid/view/View;

    iget-object v1, p0, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->d:Landroid/view/View;

    aput-object v1, v0, v5

    const v1, 0x7f0b0190

    invoke-virtual {p0, v1}, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lfb;->b([Landroid/view/View;)V

    .line 103
    iget-object v1, p0, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->c:Lcom/kms/gui/controls/Counter;

    invoke-interface {p1}, LaC;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f020127

    :goto_0
    invoke-virtual {v1, v0}, Lcom/kms/gui/controls/Counter;->setNoValueBackground(I)V

    .line 108
    invoke-interface {p1}, LaC;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-interface {p1}, LaC;->a()Lay;

    move-result-object v0

    invoke-interface {v0}, Lay;->i()J

    move-result-wide v0

    .line 110
    invoke-static {v0, v1}, LsD;->a(J)J

    move-result-wide v2

    long-to-int v2, v2

    .line 116
    :goto_1
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-eqz v3, :cond_2

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_2

    .line 119
    new-array v3, v7, [Landroid/view/View;

    iget-object v4, p0, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->a:Landroid/widget/TextView;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->b:Landroid/view/View;

    aput-object v4, v3, v6

    invoke-static {v3}, Lfb;->b([Landroid/view/View;)V

    .line 120
    invoke-virtual {p0}, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x14

    invoke-static {v3, v0, v1, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->c:Lcom/kms/gui/controls/Counter;

    invoke-virtual {v0, v2}, Lcom/kms/gui/controls/Counter;->setValue(I)V

    .line 129
    :goto_2
    return-void

    .line 103
    :cond_0
    const v0, 0x7f020125

    goto :goto_0

    .line 112
    :cond_1
    invoke-interface {p1}, LaC;->e()J

    move-result-wide v0

    .line 113
    invoke-interface {p1}, LaC;->d()I

    move-result v2

    goto :goto_1

    .line 126
    :cond_2
    new-array v0, v7, [Landroid/view/View;

    iget-object v1, p0, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->a:Landroid/widget/TextView;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->b:Landroid/view/View;

    aput-object v1, v0, v6

    invoke-static {v0}, Lfb;->a([Landroid/view/View;)V

    .line 127
    iget-object v0, p0, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->c:Lcom/kms/gui/controls/Counter;

    invoke-virtual {v0}, Lcom/kms/gui/controls/Counter;->a()V

    goto :goto_2
.end method

.method private static c(LaC;)I
    .locals 4

    .prologue
    .line 132
    invoke-interface {p0}, LaC;->c()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 148
    :pswitch_0
    const v0, 0x7f070137

    :goto_0
    return v0

    .line 134
    :pswitch_1
    const v0, 0x7f07013c

    goto :goto_0

    .line 137
    :pswitch_2
    invoke-interface {p0}, LaC;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 138
    const v0, 0x7f07013a

    goto :goto_0

    .line 140
    :cond_0
    const v0, 0x7f07013b

    goto :goto_0

    .line 143
    :pswitch_3
    const v0, 0x7f070138

    goto :goto_0

    .line 145
    :pswitch_4
    const v0, 0x7f070139

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final a(LaC;)V
    .locals 3

    .prologue
    .line 74
    invoke-interface {p1}, LaC;->c()I

    move-result v1

    .line 75
    const v0, 0x7f0b018f

    invoke-virtual {p0, v0}, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->c(LaC;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 77
    const/16 v0, 0x8

    if-ne v1, v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->a()V

    .line 84
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-interface {p1}, LaC;->a()Lay;

    move-result-object v0

    invoke-interface {v0}, Lay;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-direct {p0}, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->b()V

    goto :goto_0

    .line 82
    :cond_1
    invoke-direct {p0, p1}, Lcom/kms/gui/controls/licensing/LicenseInfoControl;->b(LaC;)V

    goto :goto_0
.end method
