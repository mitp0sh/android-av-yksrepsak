.class public Lmg;
.super LoY;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/util/Date;

.field private final d:I

.field private final e:I

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lmg;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmg;->a:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lmg;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".warning"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmg;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ZJII)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 37
    if-eqz p1, :cond_0

    sget-object v0, Lmg;->b:Ljava/lang/String;

    move-object v3, v0

    :goto_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/kms/issues/IssueType;->Warning:Lcom/kms/issues/IssueType;

    move-object v2, v0

    :goto_1
    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-direct {p0, v3, v2, v1, v0}, LoY;-><init>(Ljava/lang/String;Lcom/kms/issues/IssueType;II)V

    .line 38
    iput-boolean p1, p0, Lmg;->f:Z

    .line 39
    iput p4, p0, Lmg;->d:I

    .line 40
    iput p5, p0, Lmg;->e:I

    .line 41
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_3

    .line 42
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lmg;->c:Ljava/util/Date;

    .line 46
    :goto_3
    return-void

    .line 37
    :cond_0
    sget-object v0, Lmg;->a:Ljava/lang/String;

    move-object v3, v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/kms/issues/IssueType;->Info:Lcom/kms/issues/IssueType;

    move-object v2, v0

    goto :goto_1

    :cond_2
    const v0, 0x7f0200bc

    goto :goto_2

    .line 44
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lmg;->c:Ljava/util/Date;

    goto :goto_3
.end method

.method public static a()Lmg;
    .locals 6

    .prologue
    .line 53
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v5

    .line 54
    new-instance v0, Lmg;

    const/4 v1, 0x0

    invoke-virtual {v5}, Lsf;->b()J

    move-result-wide v2

    invoke-virtual {v5}, Lsf;->c()I

    move-result v4

    invoke-virtual {v5}, Lsf;->d()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lmg;-><init>(ZJII)V

    return-object v0
.end method

.method private static a(J)Z
    .locals 4

    .prologue
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/32 v2, 0x48190800

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Lps;
    .locals 6

    .prologue
    .line 58
    invoke-static {}, Lsr;->b()Lsf;

    move-result-object v5

    .line 59
    invoke-virtual {v5}, Lsf;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lmg;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Lmg;

    const/4 v1, 0x1

    invoke-virtual {v5}, Lsf;->b()J

    move-result-wide v2

    invoke-virtual {v5}, Lsf;->c()I

    move-result v4

    invoke-virtual {v5}, Lsf;->d()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lmg;-><init>(ZJII)V

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 92
    iget v1, p0, Lmg;->d:I

    if-lez v1, :cond_0

    .line 93
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030052

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 94
    invoke-static {}, LjJ;->m()LbG;

    move-result-object v0

    const-string v2, "Roboto-Light"

    invoke-virtual {v0, v2}, LbG;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 96
    const v0, 0x7f0b00f2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 97
    const v3, 0x7f07006f

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lmg;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 100
    const v0, 0x7f0b00f3

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 101
    iget v3, p0, Lmg;->e:I

    if-lez v3, :cond_1

    .line 102
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    const v3, 0x7f070070

    new-array v4, v7, [Ljava/lang/Object;

    iget v5, p0, Lmg;->e:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    move-object v0, v1

    .line 111
    :cond_0
    return-object v0

    .line 105
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final c()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 68
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f070072

    invoke-virtual {v0, v1}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 117
    iget-boolean v0, p0, Lmg;->f:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->ScanRequested:Lcom/kms/UiEventType;

    invoke-virtual {v1}, Lcom/kms/UiEventType;->newEvent()Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 120
    :cond_0
    return-void
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 8

    .prologue
    .line 78
    invoke-virtual {p0}, Lmg;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lmg;->c:Ljava/util/Date;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, LsD;->a(Ljava/util/Date;Ljava/util/Date;)J

    move-result-wide v0

    .line 80
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v2

    long-to-int v3, v0

    const v4, 0x7f07006b

    const v5, 0x7f07006c

    const v6, 0x7f07006d

    const v7, 0x7f07006e

    invoke-static {v3, v4, v5, v6, v7}, Lcom/kms/kmsshared/Utils;->a(IIIII)I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f070071

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lmg;->c:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lmg;->f:Z

    return v0
.end method
