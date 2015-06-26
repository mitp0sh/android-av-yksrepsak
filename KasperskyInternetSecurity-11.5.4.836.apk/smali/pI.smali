.class final LpI;
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
    .line 203
    iput-object p1, p0, LpI;->a:LpB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LpB;B)V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0, p1}, LpI;-><init>(LpB;)V

    return-void
.end method

.method private a(LsZ;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 206
    sget-object v1, LpC;->b:[I

    invoke-virtual {p1}, LsZ;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/licensing/LicenseEventType;

    invoke-virtual {v0}, Lcom/kms/licensing/LicenseEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 208
    :pswitch_0
    invoke-virtual {p1}, LsZ;->a()Lay;

    move-result-object v0

    .line 210
    invoke-static {v0}, Ltl;->a(Lay;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    invoke-static {}, Lcom/kms/issues/LicenseInfoIssue;->a()Lcom/kms/issues/LicenseInfoIssue;

    move-result-object v0

    .line 218
    :goto_1
    iget-object v1, p0, LpI;->a:LpB;

    sget-object v2, Lcom/kms/issues/LicenseInfoIssue;->a:Ljava/lang/String;

    invoke-static {v1, v2, v0}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    .line 219
    iget-object v0, p0, LpI;->a:LpB;

    sget-object v1, LpU;->a:Ljava/lang/String;

    invoke-static {v0, v1, v3}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    .line 220
    iget-object v0, p0, LpI;->a:LpB;

    sget-object v1, LpT;->a:Ljava/lang/String;

    invoke-static {v0, v1, v3}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    .line 221
    iget-object v0, p0, LpI;->a:LpB;

    sget-object v1, LpV;->a:Ljava/lang/String;

    invoke-static {}, LpV;->a()LpV;

    move-result-object v2

    invoke-static {v0, v1, v2}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    .line 222
    iget-object v0, p0, LpI;->a:LpB;

    sget-object v1, LpX;->a:Ljava/lang/String;

    invoke-static {}, LpX;->a()LpX;

    move-result-object v2

    invoke-static {v0, v1, v2}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    .line 223
    iget-object v0, p0, LpI;->a:LpB;

    sget-object v1, LoZ;->a:Ljava/lang/String;

    invoke-static {}, LjJ;->i()LkM;

    move-result-object v2

    invoke-interface {v2}, LkM;->a()Z

    move-result v2

    invoke-static {v2}, LoZ;->a(Z)LoZ;

    move-result-object v2

    invoke-static {v0, v1, v2}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    goto :goto_0

    .line 212
    :cond_1
    invoke-static {v0}, Ltl;->b(Lay;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    invoke-static {}, Lcom/kms/issues/LicenseInfoIssue;->b()Lcom/kms/issues/LicenseInfoIssue;

    move-result-object v0

    goto :goto_1

    .line 215
    :cond_2
    invoke-static {}, Lcom/kms/issues/LicenseInfoIssue;->g()Lcom/kms/issues/LicenseInfoIssue;

    move-result-object v0

    goto :goto_1

    .line 227
    :pswitch_1
    iget-object v0, p0, LpI;->a:LpB;

    sget-object v1, LpV;->a:Ljava/lang/String;

    invoke-static {}, LpV;->a()LpV;

    move-result-object v2

    invoke-static {v0, v1, v2}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    goto :goto_0

    .line 231
    :pswitch_2
    iget-object v0, p0, LpI;->a:LpB;

    sget-object v1, LpV;->a:Ljava/lang/String;

    invoke-static {v0, v1, v3}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    goto :goto_0

    .line 234
    :pswitch_3
    invoke-static {}, LjJ;->d()Ltg;

    move-result-object v0

    invoke-interface {v0}, Ltg;->a()LsW;

    move-result-object v0

    invoke-interface {v0}, LsW;->e()I

    move-result v0

    .line 235
    const/16 v1, 0xe

    if-gt v0, v1, :cond_0

    .line 236
    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    .line 237
    iget-object v0, p0, LpI;->a:LpB;

    sget-object v1, LpU;->a:Ljava/lang/String;

    invoke-static {}, LpU;->a()LpU;

    move-result-object v2

    invoke-static {v0, v1, v2}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    goto/16 :goto_0

    .line 240
    :cond_3
    iget-object v0, p0, LpI;->a:LpB;

    sget-object v1, LpU;->a:Ljava/lang/String;

    invoke-static {v0, v1, v3}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    .line 241
    iget-object v0, p0, LpI;->a:LpB;

    sget-object v1, LpT;->a:Ljava/lang/String;

    invoke-static {}, LpT;->a()LpT;

    move-result-object v2

    invoke-static {v0, v1, v2}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    goto/16 :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 203
    check-cast p1, LsZ;

    invoke-direct {p0, p1}, LpI;->a(LsZ;)V

    return-void
.end method
