.class final LcN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LY;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Z

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:LcM;


# direct methods
.method constructor <init>(LcM;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, LcN;->e:LcM;

    iput-object p2, p0, LcN;->a:Ljava/lang/String;

    iput-boolean p3, p0, LcN;->b:Z

    iput-object p4, p0, LcN;->c:Ljava/lang/String;

    iput-object p5, p0, LcN;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, LcN;->e:LcM;

    invoke-static {v0}, LcM;->a(LcM;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07069a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, LcN;->e:LcM;

    invoke-static {v0}, LcM;->a(LcM;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f07069b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 6

    .prologue
    .line 53
    iget-object v0, p0, LcN;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 55
    sparse-switch v0, :sswitch_data_0

    .line 81
    const/4 v0, 0x0

    .line 85
    :goto_0
    return-object v0

    .line 57
    :sswitch_0
    iget-object v0, p0, LcN;->e:LcM;

    invoke-static {v0}, LcM;->a(LcM;)Landroid/content/Context;

    move-result-object v1

    iget-boolean v0, p0, LcN;->b:Z

    if-eqz v0, :cond_0

    const v0, 0x7f07069e

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 84
    :goto_2
    iget-boolean v0, p0, LcN;->b:Z

    if-eqz v0, :cond_4

    const v3, 0x7f07069c

    .line 85
    :goto_3
    iget-object v0, p0, LcN;->e:LcM;

    const v2, 0x7f070699

    iget-object v4, p0, LcN;->c:Ljava/lang/String;

    iget-object v5, p0, LcN;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, LcM;->a(LcM;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_0
    const v0, 0x7f07069f

    goto :goto_1

    .line 63
    :sswitch_1
    iget-object v0, p0, LcN;->e:LcM;

    invoke-static {v0}, LcM;->a(LcM;)Landroid/content/Context;

    move-result-object v1

    iget-boolean v0, p0, LcN;->b:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0706a0

    :goto_4
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_1
    const v0, 0x7f0706a1

    goto :goto_4

    .line 69
    :sswitch_2
    iget-object v0, p0, LcN;->e:LcM;

    invoke-static {v0}, LcM;->a(LcM;)Landroid/content/Context;

    move-result-object v1

    iget-boolean v0, p0, LcN;->b:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0706a2

    :goto_5
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    const v0, 0x7f0706a3

    goto :goto_5

    .line 75
    :sswitch_3
    iget-object v0, p0, LcN;->e:LcM;

    invoke-static {v0}, LcM;->a(LcM;)Landroid/content/Context;

    move-result-object v1

    iget-boolean v0, p0, LcN;->b:Z

    if-eqz v0, :cond_3

    const v0, 0x7f0706a4

    :goto_6
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    const v0, 0x7f0706a5

    goto :goto_6

    .line 84
    :cond_4
    const v3, 0x7f07069d

    goto :goto_3

    .line 55
    nop

    :sswitch_data_0
    .sparse-switch
        0x3a2dc9 -> :sswitch_0
        0x3a2dd2 -> :sswitch_1
        0x3a2e2d -> :sswitch_2
        0x3a2e48 -> :sswitch_3
    .end sparse-switch
.end method

.method public final d()Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, -0x1

    return v0
.end method
