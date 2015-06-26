.class public abstract LpS;
.super LoY;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, LpS;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LpS;->a:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/kms/issues/IssueType;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 14
    invoke-direct {p0, p1, p2, v0, v0}, LoY;-><init>(Ljava/lang/String;Lcom/kms/issues/IssueType;II)V

    .line 15
    return-void
.end method


# virtual methods
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
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->LicensePurchaseRequested:Lcom/kms/UiEventType;

    invoke-virtual {v1}, Lcom/kms/UiEventType;->newEvent()Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 34
    return-void
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 19
    invoke-static {}, LjJ;->d()Ltg;

    move-result-object v0

    invoke-interface {v0}, Ltg;->a()LsW;

    move-result-object v0

    invoke-interface {v0}, LsW;->e()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 20
    const v1, 0x7f07004d

    const v2, 0x7f07004e

    const v3, 0x7f07004f

    invoke-static {v0, v1, v2, v3}, Lcom/kms/kmsshared/Utils;->a(IIII)I

    move-result v1

    .line 23
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
