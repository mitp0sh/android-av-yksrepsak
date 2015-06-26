.class public final Lmi;
.super LoY;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lmi;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmi;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 18
    sget-object v0, Lmi;->a:Ljava/lang/String;

    sget-object v1, Lcom/kms/issues/IssueType;->Warning:Lcom/kms/issues/IssueType;

    const v2, 0x7f070073

    const/4 v3, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, LoY;-><init>(Ljava/lang/String;Lcom/kms/issues/IssueType;II)V

    .line 19
    iput p1, p0, Lmi;->b:I

    .line 20
    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 29
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v0

    iget v1, p0, Lmi;->b:I

    const v2, 0x7f070062

    const v3, 0x7f070063

    const v4, 0x7f070064

    const v5, 0x7f070065

    invoke-static {v1, v2, v3, v4, v5}, Lcom/kms/kmsshared/Utils;->a(IIIII)I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lmi;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 43
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    sget-object v1, Lcom/kms/UiEventType;->TypedScanRequested:Lcom/kms/UiEventType;

    sget-object v2, Lcom/kms/antivirus/AntivirusScanType;->Quick:Lcom/kms/antivirus/AntivirusScanType;

    invoke-virtual {v1, v2}, Lcom/kms/UiEventType;->newEvent(Ljava/lang/Object;)Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 44
    return-void
.end method

.method public final f()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 38
    invoke-static {}, LjJ;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0}, Lmi;->m()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lmi;->b:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method
