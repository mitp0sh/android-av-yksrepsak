.class public Lpc;
.super LoY;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lpc;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpc;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 14
    sget-object v0, Lpc;->a:Ljava/lang/String;

    sget-object v1, Lcom/kms/issues/IssueType;->Critical:Lcom/kms/issues/IssueType;

    const v2, 0x7f07007d

    const/4 v3, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, LoY;-><init>(Ljava/lang/String;Lcom/kms/issues/IssueType;II)V

    .line 15
    return-void
.end method

.method public static a()Lpc;
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lpc;

    invoke-direct {v0}, Lpc;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final c()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 23
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f07007c

    invoke-virtual {v0, v1}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kaspersky/kts/gui/wizard/WizardActivity;->a(Landroid/content/Context;Z)V

    .line 34
    return-void
.end method
