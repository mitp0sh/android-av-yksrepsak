.class public Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;
.super Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field private f:Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;

.field private g:Landroid/widget/Button;

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/kaspersky/kts/gui/wizard/steps/AbstractWizardStep;-><init>(Landroid/view/LayoutInflater;Landroid/support/v4/app/Fragment;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->a:Ljava/util/ArrayList;

    .line 53
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->c:Landroid/content/Context;

    invoke-static {v0}, Lkx;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->h:I

    .line 54
    invoke-static {}, Lsr;->i()Lsz;

    move-result-object v0

    invoke-virtual {v0}, Lsz;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->i:Z

    .line 55
    return-void
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;)Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->f:Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 104
    if-nez p0, :cond_1

    .line 105
    const-string p0, ""

    .line 112
    :cond_0
    :goto_0
    return-object p0

    .line 107
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<body"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 108
    if-ltz v0, :cond_0

    .line 109
    const-string v1, "<style>body{background-color: #e4e4e4;}</style>"

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private a(Landroid/app/ProgressDialog;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 116
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 117
    if-nez v6, :cond_0

    .line 138
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-static {p3}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 121
    const v0, 0x7f0600b4

    iget-object v1, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/kms/kmsshared/Utils;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 122
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$2;

    move-object v1, p0

    move-object v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$2;-><init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;Landroid/app/ProgressDialog;Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->a(Landroid/app/ProgressDialog;Ljava/lang/Exception;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    invoke-static {}, Lbt;->a()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    .line 143
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 147
    new-instance v2, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    invoke-virtual {v2}, Lorg/apache/http/entity/BufferedHttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 148
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 151
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->c:Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->c:Landroid/content/Context;

    const v3, 0x7f07048c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    .line 85
    new-instance v1, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$1;

    invoke-direct {v1, p0, v0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$1;-><init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;Landroid/app/ProgressDialog;)V

    invoke-virtual {v1}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$1;->start()V

    .line 101
    return-void
.end method

.method static synthetic c(Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->g:Landroid/widget/Button;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 190
    invoke-static {}, Lsr;->l()Lsx;

    move-result-object v0

    invoke-virtual {v0}, Lsx;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-static {}, LjJ;->k()Lww;

    move-result-object v0

    invoke-interface {v0}, Lww;->c()V

    .line 194
    :cond_0
    invoke-static {}, Lsr;->h()Lsj;

    move-result-object v0

    .line 195
    const-class v1, Lsj;

    monitor-enter v1

    .line 196
    :try_start_0
    iget v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->h:I

    invoke-virtual {v0, v2}, Lsj;->a(I)V

    .line 197
    invoke-virtual {v0}, Lsj;->g_()V

    .line 198
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->d()V

    .line 201
    return-void

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private d()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 204
    new-instance v0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$InitApplicationWorkThreadLoader;

    invoke-direct {v0, p0, v5}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep$InitApplicationWorkThreadLoader;-><init>(Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;B)V

    .line 205
    invoke-static {}, Lqq;->a()Z

    .line 207
    new-instance v1, LnT;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->c:Landroid/content/Context;

    const v4, 0x7f0706b2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v5, v3}, LnT;-><init>(Landroid/content/Context;LnX;ILjava/lang/String;)V

    invoke-virtual {v1}, LnT;->a()V

    .line 210
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(I)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 59
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f0300b3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 60
    const v0, 0x7f0b020b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->f:Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;

    .line 61
    const v0, 0x7f0b020c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->g:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->g:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-static {}, Lsr;->l()Lsx;

    move-result-object v0

    invoke-virtual {v0}, Lsx;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->i:Z

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->g:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 65
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->b()V

    .line 74
    :goto_0
    return-object v1

    .line 67
    :cond_0
    invoke-static {}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->s()Z

    move-result v0

    .line 68
    const v2, 0x7f0600b4

    iget-object v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->c:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/kms/kmsshared/Utils;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 69
    iget-object v3, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->a:Ljava/util/ArrayList;

    new-instance v4, Lgm;

    iget-object v5, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->c:Landroid/content/Context;

    const v6, 0x7f070207

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2, v0, v7}, Lgm;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->f:Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;

    iget-object v2, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/kaspersky/kts/gui/wizard/controls/AgreementsListView;->setAgreements(Ljava/util/ArrayList;)V

    .line 71
    iget-object v0, p0, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->g:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 182
    :goto_0
    return-void

    .line 177
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 178
    invoke-direct {p0}, Lcom/kaspersky/kts/gui/wizard/steps/WizardAgreementsStep;->c()V

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x7f0b020c
        :pswitch_0
    .end packed-switch
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method
