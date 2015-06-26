.class public abstract LoY;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lps;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/kms/issues/IssueType;

.field private c:Z

.field private final d:I

.field private final e:I

.field private final f:Ljava/util/Date;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/kms/issues/IssueType;)V
    .locals 6

    .prologue
    const/4 v4, -0x1

    .line 34
    invoke-static {p1}, LoY;->a(Ljava/lang/String;)Z

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, LoY;-><init>(Ljava/lang/String;Lcom/kms/issues/IssueType;ZII)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/kms/issues/IssueType;II)V
    .locals 6

    .prologue
    .line 38
    invoke-static {p1}, LoY;->a(Ljava/lang/String;)Z

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, LoY;-><init>(Ljava/lang/String;Lcom/kms/issues/IssueType;ZII)V

    .line 39
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/kms/issues/IssueType;ZII)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, LoY;->a:Ljava/lang/String;

    .line 43
    iput-object p2, p0, LoY;->b:Lcom/kms/issues/IssueType;

    .line 44
    iput-boolean p3, p0, LoY;->c:Z

    .line 45
    iput p4, p0, LoY;->d:I

    .line 46
    iput p5, p0, LoY;->e:I

    .line 47
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, LoY;->f:Ljava/util/Date;

    .line 48
    return-void
.end method

.method private a()LoY;
    .locals 2

    .prologue
    .line 97
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LoY;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    return-object v0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 167
    invoke-static {}, Lsu;->a()Lsu;

    move-result-object v0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "issue_ignore_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsu;->b(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 169
    invoke-virtual {v0}, Lsu;->b()V

    .line 170
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 173
    invoke-static {}, Lsu;->a()Lsu;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "issue_ignore_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lsu;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0}, LoY;->d()Ljava/lang/CharSequence;

    move-result-object v1

    .line 132
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 133
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 134
    const v3, 0x7f030054

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-static {}, LjJ;->m()LbG;

    move-result-object v1

    const-string v2, "Roboto-Light"

    invoke-virtual {v1, v2}, LbG;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 139
    :cond_0
    return-object v0
.end method

.method public c()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, LoY;->a()LoY;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 151
    if-ne p0, p1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 152
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 154
    :cond_3
    check-cast p1, LoY;

    .line 156
    iget-object v2, p0, LoY;->a:Ljava/lang/String;

    iget-object v3, p1, LoY;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 76
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v0

    iget v1, p0, LoY;->d:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, LoY;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Lcom/kms/issues/IssueType;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, LoY;->b:Lcom/kms/issues/IssueType;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, LoY;->c:Z

    return v0
.end method

.method public final k()Ljava/util/Date;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, LoY;->f:Ljava/util/Date;

    return-object v0
.end method

.method public final l()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, LoY;->e:I

    return v0
.end method

.method protected final m()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, LoY;->d:I

    return v0
.end method

.method public final n()Lpv;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lpe;

    invoke-direct {v0, p0}, Lpe;-><init>(Lps;)V

    return-object v0
.end method

.method public final o()Lps;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 106
    invoke-virtual {p0}, LoY;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    invoke-direct {p0}, LoY;->a()LoY;

    move-result-object v0

    .line 108
    iput-boolean v2, v0, LoY;->c:Z

    .line 109
    invoke-virtual {p0}, LoY;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, LoY;->a(Ljava/lang/String;Z)V

    move-object p0, v0

    .line 112
    :cond_0
    return-object p0
.end method

.method public final p()Lps;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 118
    invoke-virtual {p0}, LoY;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, LoY;->a()LoY;

    move-result-object v0

    .line 120
    iput-boolean v2, v0, LoY;->c:Z

    .line 121
    invoke-virtual {p0}, LoY;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, LoY;->a(Ljava/lang/String;Z)V

    move-object p0, v0

    .line 124
    :cond_0
    return-object p0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, LoY;->a:Ljava/lang/String;

    return-object v0
.end method
