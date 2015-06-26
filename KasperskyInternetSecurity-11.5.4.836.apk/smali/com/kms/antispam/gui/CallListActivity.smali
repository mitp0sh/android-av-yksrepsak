.class public Lcom/kms/antispam/gui/CallListActivity;
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

    iput v0, p0, Lcom/kms/antispam/gui/CallListActivity;->b:I

    .line 28
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/kms/antispam/gui/CallListActivity;->c:Ljava/util/Vector;

    return-void
.end method

.method public static synthetic a(Lcom/kms/antispam/gui/CallListActivity;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kms/antispam/gui/CallListActivity;->c:Ljava/util/Vector;

    return-object v0
.end method

.method public static synthetic b(Lcom/kms/antispam/gui/CallListActivity;)V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/kms/antispam/gui/CallListActivity;->l()V

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 3

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/kms/antispam/gui/CallListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 46
    const-string v2, "phoneNumber"

    iget-object v0, p0, Lcom/kms/antispam/gui/CallListActivity;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqr;

    iget-object v0, v0, Lqr;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/kms/antispam/gui/CallListActivity;->setResult(ILandroid/content/Intent;)V

    .line 48
    invoke-virtual {p0}, Lcom/kms/antispam/gui/CallListActivity;->finish()V

    .line 49
    return-void
.end method

.method protected final a(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 85
    iget-object v0, p0, Lcom/kms/antispam/gui/CallListActivity;->c:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lql;

    .line 86
    const v1, 0x7f0b0069

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 87
    iget-wide v2, v0, Lql;->a:J

    const/16 v4, 0x15

    invoke-static {p0, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-wide v0, v0, Lql;->a:J

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 92
    return-void
.end method

.method protected final b()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method protected final b(I)Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method protected final c()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method protected final d()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/kms/antispam/gui/CallListActivity;->c:Ljava/util/Vector;

    return-object v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 75
    const v0, 0x7f030019

    return v0
.end method

.method protected final f()I
    .locals 1

    .prologue
    .line 80
    const v0, 0x7f03001a

    return v0
.end method

.method protected final g()V
    .locals 3

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/kms/antispam/gui/CallListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_0

    .line 100
    const-string v1, "antispam.gui.calllog.color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const-string v1, "antispam.gui.calllog.color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kms/antispam/gui/CallListActivity;->b:I

    .line 108
    const v0, 0x7f0b00bb

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/CallListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 109
    iget v1, p0, Lcom/kms/antispam/gui/CallListActivity;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 110
    const v1, 0x7f07024e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 118
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LlS;

    invoke-direct {v1, p0}, LlS;-><init>(Lcom/kms/antispam/gui/CallListActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 204
    return-void

    .line 113
    :cond_1
    const v1, 0x7f07024f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    const v0, 0x7f07024d

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/kms/antispam/gui/CallListActivity;->a(IIII)V

    .line 34
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    return-void
.end method
