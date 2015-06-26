.class final LpG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrz;


# instance fields
.field private synthetic a:LpB;


# direct methods
.method private constructor <init>(LpB;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, LpG;->a:LpB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LpB;B)V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0, p1}, LpG;-><init>(LpB;)V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 283
    iget-object v0, p0, LpG;->a:LpB;

    sget-object v1, Lmd;->a:Ljava/lang/String;

    invoke-static {}, Lmd;->a()Lps;

    move-result-object v2

    invoke-static {v0, v1, v2}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    .line 284
    return-void
.end method

.method private a(Lme;)V
    .locals 3

    .prologue
    .line 254
    sget-object v1, LpC;->c:[I

    invoke-virtual {p1}, Lme;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v0}, Lcom/kms/antivirus/AntivirusEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 276
    :goto_0
    return-void

    .line 256
    :pswitch_0
    iget-object v0, p0, LpG;->a:LpB;

    sget-object v1, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    goto :goto_0

    .line 264
    :pswitch_1
    iget-object v0, p0, LpG;->a:LpB;

    sget-object v1, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue;->a:Ljava/lang/String;

    invoke-static {}, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue;->a()Lcom/kms/antivirus/AntivirusDatabasesInfoIssue;

    move-result-object v2

    invoke-static {v0, v1, v2}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    .line 265
    iget-object v0, p0, LpG;->a:LpB;

    sget-object v1, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue;->b:Ljava/lang/String;

    invoke-static {}, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue;->b()Lcom/kms/antivirus/AntivirusDatabasesInfoIssue;

    move-result-object v2

    invoke-static {v0, v1, v2}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    goto :goto_0

    .line 268
    :pswitch_2
    invoke-direct {p0, p1}, LpG;->b(Lme;)V

    goto :goto_0

    .line 271
    :pswitch_3
    invoke-direct {p0}, LpG;->a()V

    goto :goto_0

    .line 274
    :pswitch_4
    iget-object v0, p0, LpG;->a:LpB;

    sget-object v1, Lmg;->b:Ljava/lang/String;

    invoke-static {}, Lmg;->b()Lps;

    move-result-object v2

    invoke-static {v0, v1, v2}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    .line 275
    iget-object v0, p0, LpG;->a:LpB;

    sget-object v1, Lmg;->a:Ljava/lang/String;

    invoke-static {}, Lmg;->a()Lmg;

    move-result-object v2

    invoke-static {v0, v1, v2}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    goto :goto_0

    .line 254
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(Lmn;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 303
    iget-object v0, p0, LpG;->a:LpB;

    sget-object v1, Lmj;->a:Ljava/lang/String;

    new-instance v2, Lmj;

    invoke-direct {v2, p1}, Lmj;-><init>(Lmn;)V

    invoke-static {v0, v1, v2}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    .line 304
    iget-object v0, p0, LpG;->a:LpB;

    sget-object v1, Lmi;->a:Ljava/lang/String;

    invoke-static {v0, v1, v3}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    .line 305
    iget-object v0, p0, LpG;->a:LpB;

    sget-object v1, Lmg;->b:Ljava/lang/String;

    invoke-static {v0, v1, v3}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    .line 306
    return-void
.end method

.method private b(Lme;)V
    .locals 3

    .prologue
    .line 287
    invoke-virtual {p1}, Lme;->e()Lmn;

    move-result-object v0

    .line 289
    sget-object v1, LpC;->d:[I

    invoke-virtual {v0}, Lmn;->e()Lcom/kms/antivirus/AntivirusStateType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kms/antivirus/AntivirusStateType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 300
    :goto_0
    :pswitch_0
    return-void

    .line 291
    :pswitch_1
    invoke-direct {p0, v0}, LpG;->a(Lmn;)V

    goto :goto_0

    .line 297
    :pswitch_2
    invoke-direct {p0, v0}, LpG;->b(Lmn;)V

    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private b(Lmn;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 309
    invoke-virtual {p1}, Lmn;->j()I

    move-result v0

    if-lez v0, :cond_0

    .line 310
    new-instance v0, Lmi;

    invoke-virtual {p1}, Lmn;->j()I

    move-result v1

    invoke-direct {v0, v1}, Lmi;-><init>(I)V

    .line 311
    iget-object v1, p0, LpG;->a:LpB;

    sget-object v2, Lmi;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    .line 315
    :goto_0
    iget-object v0, p0, LpG;->a:LpB;

    sget-object v1, Lmj;->a:Ljava/lang/String;

    invoke-static {v0, v1, v3}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    .line 316
    iget-object v0, p0, LpG;->a:LpB;

    sget-object v1, Lmg;->b:Ljava/lang/String;

    invoke-static {}, Lmg;->b()Lps;

    move-result-object v2

    invoke-static {v0, v1, v2}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    .line 317
    iget-object v0, p0, LpG;->a:LpB;

    sget-object v1, Lmg;->a:Ljava/lang/String;

    invoke-static {}, Lmg;->a()Lmg;

    move-result-object v2

    invoke-static {v0, v1, v2}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    .line 318
    return-void

    .line 313
    :cond_0
    iget-object v0, p0, LpG;->a:LpB;

    sget-object v1, Lmi;->a:Ljava/lang/String;

    invoke-static {v0, v1, v3}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 251
    check-cast p1, Lme;

    invoke-direct {p0, p1}, LpG;->a(Lme;)V

    return-void
.end method
