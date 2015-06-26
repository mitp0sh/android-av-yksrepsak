.class public final Lmo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:I

.field private b:Lcom/kms/antivirus/AntivirusUpdateReason;

.field private c:Lcom/kms/antivirus/AntivirusUpdateBasesStateType;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x64

    iput v0, p0, Lmo;->a:I

    .line 30
    sget-object v0, Lcom/kms/antivirus/AntivirusUpdateBasesStateType;->Stopped:Lcom/kms/antivirus/AntivirusUpdateBasesStateType;

    iput-object v0, p0, Lmo;->c:Lcom/kms/antivirus/AntivirusUpdateBasesStateType;

    .line 42
    return-void
.end method

.method private constructor <init>(Lcom/kms/antivirus/AntivirusUpdateBasesStateType;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/16 v0, 0x64

    iput v0, p0, Lmo;->a:I

    .line 30
    sget-object v0, Lcom/kms/antivirus/AntivirusUpdateBasesStateType;->Stopped:Lcom/kms/antivirus/AntivirusUpdateBasesStateType;

    iput-object v0, p0, Lmo;->c:Lcom/kms/antivirus/AntivirusUpdateBasesStateType;

    .line 45
    iput-object p1, p0, Lmo;->c:Lcom/kms/antivirus/AntivirusUpdateBasesStateType;

    .line 46
    return-void
.end method

.method public static a()Lmo;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lmo;

    sget-object v1, Lcom/kms/antivirus/AntivirusUpdateBasesStateType;->Stopped:Lcom/kms/antivirus/AntivirusUpdateBasesStateType;

    invoke-direct {v0, v1}, Lmo;-><init>(Lcom/kms/antivirus/AntivirusUpdateBasesStateType;)V

    return-object v0
.end method

.method public static a(Lcom/kms/antivirus/AntivirusUpdateReason;)Lmo;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Lmo;

    sget-object v1, Lcom/kms/antivirus/AntivirusUpdateBasesStateType;->Running:Lcom/kms/antivirus/AntivirusUpdateBasesStateType;

    invoke-direct {v0, v1}, Lmo;-><init>(Lcom/kms/antivirus/AntivirusUpdateBasesStateType;)V

    .line 64
    const/4 v1, 0x0

    iput v1, v0, Lmo;->a:I

    .line 65
    iput-object p0, v0, Lmo;->b:Lcom/kms/antivirus/AntivirusUpdateReason;

    .line 66
    return-object v0
.end method

.method private f()Lmo;
    .locals 2

    .prologue
    .line 103
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    return-object v0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method


# virtual methods
.method public final a(I)Lmo;
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lmo;->f()Lmo;

    move-result-object v0

    .line 56
    iput p1, v0, Lmo;->a:I

    .line 57
    return-object v0
.end method

.method public final b()Lmo;
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lmo;->f()Lmo;

    move-result-object v0

    .line 72
    sget-object v1, Lcom/kms/antivirus/AntivirusUpdateBasesStateType;->Stopped:Lcom/kms/antivirus/AntivirusUpdateBasesStateType;

    iput-object v1, v0, Lmo;->c:Lcom/kms/antivirus/AntivirusUpdateBasesStateType;

    .line 73
    const/4 v1, 0x0

    iput-object v1, v0, Lmo;->b:Lcom/kms/antivirus/AntivirusUpdateReason;

    .line 74
    return-object v0
.end method

.method public final c()Lcom/kms/antivirus/AntivirusUpdateBasesStateType;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lmo;->c:Lcom/kms/antivirus/AntivirusUpdateBasesStateType;

    return-object v0
.end method

.method protected final synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Lmo;->f()Lmo;

    move-result-object v0

    return-object v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lmo;->a:I

    return v0
.end method

.method public final e()Lcom/kms/antivirus/AntivirusUpdateReason;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lmo;->b:Lcom/kms/antivirus/AntivirusUpdateReason;

    return-object v0
.end method
