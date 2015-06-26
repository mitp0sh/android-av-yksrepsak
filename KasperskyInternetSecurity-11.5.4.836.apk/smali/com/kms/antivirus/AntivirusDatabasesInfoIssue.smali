.class public Lcom/kms/antivirus/AntivirusDatabasesInfoIssue;
.super LoY;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# instance fields
.field private final c:Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue;->a:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;Z)V
    .locals 4

    .prologue
    .line 27
    # getter for: Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;->mIssueId:Ljava/lang/String;
    invoke-static {p1}, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;->access$000(Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;->mIssueType:Lcom/kms/issues/IssueType;
    invoke-static {p1}, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;->access$100(Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;)Lcom/kms/issues/IssueType;

    move-result-object v2

    if-eqz p2, :cond_0

    const v0, 0x7f070061

    :goto_0
    # getter for: Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;->mIconResId:I
    invoke-static {p1}, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;->access$200(Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;)I

    move-result v3

    invoke-direct {p0, v1, v2, v0, v3}, LoY;-><init>(Ljava/lang/String;Lcom/kms/issues/IssueType;II)V

    .line 28
    iput-object p1, p0, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue;->c:Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;

    .line 29
    return-void

    .line 27
    :cond_0
    const v0, 0x7f07005f

    goto :goto_0
.end method

.method public static a()Lcom/kms/antivirus/AntivirusDatabasesInfoIssue;
    .locals 3

    .prologue
    .line 32
    new-instance v0, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue;

    sget-object v1, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;->Info:Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;

    invoke-static {}, Lcom/kms/kmsshared/Utils;->l()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue;-><init>(Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;Z)V

    return-object v0
.end method

.method public static b()Lcom/kms/antivirus/AntivirusDatabasesInfoIssue;
    .locals 3

    .prologue
    .line 36
    invoke-static {}, Lcom/kms/kmsshared/Utils;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue;

    sget-object v1, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;->Error:Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue;-><init>(Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;Z)V

    .line 39
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030051

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 62
    invoke-static {}, LjJ;->m()LbG;

    move-result-object v0

    const-string v2, "Roboto-Light"

    invoke-virtual {v0, v2}, LbG;->a(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    .line 64
    const v0, 0x7f0b00ef

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    sget-object v3, Lmc;->a:[I

    iget-object v4, p0, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue;->c:Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;

    invoke-virtual {v4}, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 73
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 75
    const v0, 0x7f0b00f0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 76
    invoke-static {}, Lcom/kms/kmsshared/Utils;->j()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 77
    invoke-static {}, Lcom/kms/kmsshared/Utils;->k()J

    move-result-wide v3

    const/16 v5, 0x15

    invoke-static {p1, v3, v4, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    .line 78
    const v4, 0x7f07032f

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 85
    const v0, 0x7f0b00f1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 87
    invoke-static {}, LmC;->a()LmC;

    move-result-object v3

    invoke-virtual {v3}, LmC;->b()J

    move-result-wide v3

    .line 88
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_1

    .line 89
    invoke-static {v3, v4}, Lcom/kms/kmsshared/Utils;->b(J)Ljava/lang/String;

    move-result-object v3

    .line 90
    const v4, 0x7f070457

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v3, v5, v7

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 96
    return-object v1

    .line 67
    :pswitch_0
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 70
    :pswitch_1
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 92
    :cond_1
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue;->c:Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;

    # getter for: Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;->mShortInfoResId:I
    invoke-static {v0}, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;->access$300(Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;)I

    move-result v0

    .line 46
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public final d()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue;->c:Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;

    invoke-virtual {v0}, Lcom/kms/antivirus/AntivirusDatabasesInfoIssue$DatabasesInfoIssueType;->trySolve()V

    .line 57
    return-void
.end method
