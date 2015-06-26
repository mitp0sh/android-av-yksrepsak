.class public Lcom/kms/antispam/gui/ImportSMSNumberActivity;
.super Lcom/kms/gui/KMSCommonContactsActivity;
.source "SourceFile"


# instance fields
.field private b:I

.field private c:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/kms/gui/KMSCommonContactsActivity;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput v0, p0, Lcom/kms/antispam/gui/ImportSMSNumberActivity;->b:I

    .line 30
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/kms/antispam/gui/ImportSMSNumberActivity;->c:Ljava/util/Vector;

    return-void
.end method

.method public static synthetic a(Lcom/kms/antispam/gui/ImportSMSNumberActivity;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kms/antispam/gui/ImportSMSNumberActivity;->c:Ljava/util/Vector;

    return-object v0
.end method

.method public static synthetic b(Lcom/kms/antispam/gui/ImportSMSNumberActivity;)V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/kms/antispam/gui/ImportSMSNumberActivity;->l()V

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 4

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/kms/antispam/gui/ImportSMSNumberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 181
    iget-object v0, p0, Lcom/kms/antispam/gui/ImportSMSNumberActivity;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LqB;

    .line 182
    iget-object v2, v0, LqB;->g:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    const-string v2, "phoneNumber"

    iget-object v0, p0, Lcom/kms/antispam/gui/ImportSMSNumberActivity;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqr;

    iget-object v0, v0, Lqr;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    :goto_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/kms/antispam/gui/ImportSMSNumberActivity;->setResult(ILandroid/content/Intent;)V

    .line 189
    invoke-virtual {p0}, Lcom/kms/antispam/gui/ImportSMSNumberActivity;->finish()V

    .line 190
    return-void

    .line 186
    :cond_0
    const-string v2, "phoneNumber"

    iget-object v0, v0, LqB;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected final a(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 168
    iget-object v0, p0, Lcom/kms/antispam/gui/ImportSMSNumberActivity;->c:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LqB;

    .line 169
    const v1, 0x7f0b00a7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 170
    iget-wide v2, v0, LqB;->a:J

    const/16 v4, 0x15

    invoke-static {p0, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    .line 173
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    const v1, 0x7f0b00a8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 175
    iget-object v0, v0, LqB;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    return-void
.end method

.method protected final b()V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method protected final b(I)Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method protected final c()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method protected final d()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/kms/antispam/gui/ImportSMSNumberActivity;->c:Ljava/util/Vector;

    return-object v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 64
    const v0, 0x7f030030

    return v0
.end method

.method protected final f()I
    .locals 1

    .prologue
    .line 163
    const v0, 0x7f030031

    return v0
.end method

.method protected final g()V
    .locals 3

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/kms/antispam/gui/ImportSMSNumberActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_0

    .line 73
    const-string v1, "antispam.gui.import_sms.color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const-string v1, "antispam.gui.import_sms.color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kms/antispam/gui/ImportSMSNumberActivity;->b:I

    .line 81
    const v0, 0x7f0b00bb

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/ImportSMSNumberActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    iget v1, p0, Lcom/kms/antispam/gui/ImportSMSNumberActivity;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 83
    const v1, 0x7f070251

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 91
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LlU;

    invoke-direct {v1, p0}, LlU;-><init>(Lcom/kms/antispam/gui/ImportSMSNumberActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 159
    return-void

    .line 86
    :cond_1
    const v1, 0x7f070252

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    const v0, 0x7f070250

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/kms/antispam/gui/ImportSMSNumberActivity;->a(IIII)V

    .line 59
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method
