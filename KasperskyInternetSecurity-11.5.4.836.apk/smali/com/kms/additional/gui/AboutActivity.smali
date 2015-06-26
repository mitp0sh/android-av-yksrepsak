.class public Lcom/kms/additional/gui/AboutActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/lang/String;

.field private e:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    return-void
.end method

.method private static a(Landroid/widget/TextView;)V
    .locals 5

    .prologue
    .line 134
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 135
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 136
    new-instance v1, Landroid/text/style/URLSpan;

    const-string v2, "#"

    invoke-direct {v1, v2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 138
    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 139
    return-void
.end method


# virtual methods
.method protected final b()I
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/kms/additional/gui/AboutActivity;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/kms/additional/gui/AboutActivity;->finish()V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/kms/additional/gui/AboutActivity;->b:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kms/additional/gui/AboutActivity;->showDialog(I)V

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/kms/additional/gui/AboutActivity;->c:Landroid/widget/TextView;

    if-ne p1, v0, :cond_2

    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/kms/additional/gui/AboutActivity;->showDialog(I)V

    .line 81
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 35
    const v0, 0x7f0e0065

    invoke-virtual {p0, v0}, Lcom/kms/additional/gui/AboutActivity;->setTheme(I)V

    .line 38
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0, v2}, Lcom/kms/additional/gui/AboutActivity;->a(II)V

    .line 41
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lcom/kms/additional/gui/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 42
    const v1, 0x7f0701bf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 44
    const v0, 0x7f0b0051

    invoke-virtual {p0, v0}, Lcom/kms/additional/gui/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/additional/gui/AboutActivity;->a:Landroid/widget/Button;

    .line 45
    iget-object v0, p0, Lcom/kms/additional/gui/AboutActivity;->a:Landroid/widget/Button;

    const v1, 0x7f070153

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 46
    iget-object v0, p0, Lcom/kms/additional/gui/AboutActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 47
    iget-object v0, p0, Lcom/kms/additional/gui/AboutActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Lcom/kms/additional/gui/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    :try_start_0
    invoke-virtual {p0}, Lcom/kms/additional/gui/AboutActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 52
    const v2, 0x7f0701c0

    invoke-virtual {p0, v2}, Lcom/kms/additional/gui/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/kms/additional/gui/AboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    const v0, 0x7f0b0039

    invoke-virtual {p0, v0}, Lcom/kms/additional/gui/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/additional/gui/AboutActivity;->b:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/kms/additional/gui/AboutActivity;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Lcom/kms/additional/gui/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/additional/gui/AboutActivity;->c:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/kms/additional/gui/AboutActivity;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/kms/additional/gui/AboutActivity;->b:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/kms/additional/gui/AboutActivity;->a(Landroid/widget/TextView;)V

    .line 67
    iget-object v0, p0, Lcom/kms/additional/gui/AboutActivity;->c:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/kms/additional/gui/AboutActivity;->a(Landroid/widget/TextView;)V

    .line 68
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 85
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kms/additional/gui/AboutActivity;->e:Landroid/webkit/WebView;

    .line 86
    packed-switch p1, :pswitch_data_0

    .line 120
    :goto_0
    return-object v1

    .line 88
    :pswitch_0
    const-string v0, "external_code.html"

    invoke-static {v0, p0}, Lcom/kms/kmsshared/Utils;->b(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/additional/gui/AboutActivity;->d:Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/kms/additional/gui/AboutActivity;->e:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/kms/additional/gui/AboutActivity;->d:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v0, LoN;

    invoke-direct {v0, p0}, LoN;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0702b7

    invoke-virtual {v0, v1}, LoN;->a(I)LoN;

    move-result-object v0

    iget-object v1, p0, Lcom/kms/additional/gui/AboutActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, LoN;->a(Landroid/view/View;)LoN;

    move-result-object v0

    const v1, 0x7f0702b8

    new-instance v2, LkF;

    invoke-direct {v2, p0}, LkF;-><init>(Lcom/kms/additional/gui/AboutActivity;)V

    invoke-virtual {v0, v1, v2}, LoN;->a(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v1

    goto :goto_0

    .line 104
    :pswitch_1
    const v0, 0x7f0600b4

    invoke-static {v0, p0}, Lcom/kms/kmsshared/Utils;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/additional/gui/AboutActivity;->d:Ljava/lang/String;

    .line 106
    iget-object v0, p0, Lcom/kms/additional/gui/AboutActivity;->e:Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/kms/additional/gui/AboutActivity;->d:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v0, LoN;

    invoke-direct {v0, p0}, LoN;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070207

    invoke-virtual {v0, v1}, LoN;->a(I)LoN;

    move-result-object v0

    iget-object v1, p0, Lcom/kms/additional/gui/AboutActivity;->e:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, LoN;->a(Landroid/view/View;)LoN;

    move-result-object v0

    const v1, 0x7f070153

    new-instance v2, LkG;

    invoke-direct {v2, p0}, LkG;-><init>(Lcom/kms/additional/gui/AboutActivity;)V

    invoke-virtual {v0, v1, v2}, LoN;->a(ILandroid/content/DialogInterface$OnClickListener;)LoN;

    move-result-object v0

    invoke-virtual {v0}, LoN;->b()LoM;

    move-result-object v1

    goto :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
