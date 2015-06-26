.class final synthetic LjH;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    invoke-static {}, Lcom/kms/antivirus/AntivirusUpdateError;->values()[Lcom/kms/antivirus/AntivirusUpdateError;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LjH;->b:[I

    :try_start_0
    sget-object v0, LjH;->b:[I

    sget-object v1, Lcom/kms/antivirus/AntivirusUpdateError;->NoInternet:Lcom/kms/antivirus/AntivirusUpdateError;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusUpdateError;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    .line 23
    :goto_0
    invoke-static {}, Lcom/kms/antivirus/AntivirusEventType;->values()[Lcom/kms/antivirus/AntivirusEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, LjH;->a:[I

    :try_start_1
    sget-object v0, LjH;->a:[I

    sget-object v1, Lcom/kms/antivirus/AntivirusEventType;->BasesUpdateFailed:Lcom/kms/antivirus/AntivirusEventType;

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
