.class public Lcom/kms/license/legacy/License;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Ljava/io/FileInputStream;

.field private static c:Ljava/io/FileOutputStream;

.field private static mLicenseContext:I

.field private static mStorageFdRead:Ljava/io/FileDescriptor;

.field private static mStorageFdWrite:Ljava/io/FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/kms/license/legacy/License;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 53
    sput-object p0, Lcom/kms/license/legacy/License;->a:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private static closeStorageFDWrite()Z
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/kms/license/legacy/License;->c:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 111
    :try_start_0
    sget-object v0, Lcom/kms/license/legacy/License;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/kms/license/legacy/License;->c:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected static native free()V
.end method

.method public static native getKeyLicenseType(I)I
.end method

.method public static native getKeySerialNumber(I)Ljava/lang/String;
.end method

.method public static native getLicenseExpireDate()J
.end method

.method public static native getLicenseInstallDate()J
.end method

.method public static native getLicenseState()I
.end method

.method protected static native getLicenseValidityDaysLeft()I
.end method

.method public static native getLicenseWorkDays()I
.end method

.method public static native getNumberOfKeys()I
.end method

.method public static h()V
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/kms/license/legacy/License;->closeStorageFDWrite()Z

    .line 124
    sget-object v0, Lcom/kms/license/legacy/License;->b:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    .line 126
    :try_start_0
    sget-object v0, Lcom/kms/license/legacy/License;->b:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 127
    const/4 v0, 0x0

    sput-object v0, Lcom/kms/license/legacy/License;->b:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected static native init(J)I
.end method

.method private static initStorageFDRead()Z
    .locals 2

    .prologue
    .line 89
    :try_start_0
    sget-object v0, Lcom/kms/license/legacy/License;->b:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/kms/license/legacy/License;->b:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 94
    :cond_0
    sget-object v0, Lcom/kms/license/legacy/License;->a:Landroid/content/Context;

    const-string v1, "license.dat"

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 95
    sput-object v0, Lcom/kms/license/legacy/License;->b:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    sput-object v0, Lcom/kms/license/legacy/License;->mStorageFdRead:Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    .line 99
    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 103
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 98
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static initStorageFDWrite()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 61
    :try_start_0
    sget-object v1, Lcom/kms/license/legacy/License;->c:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 63
    sget-object v1, Lcom/kms/license/legacy/License;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 65
    :cond_0
    sget-object v1, Lcom/kms/license/legacy/License;->a:Landroid/content/Context;

    const-string v2, "license.dat"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 67
    sget-object v1, Lcom/kms/license/legacy/License;->a:Landroid/content/Context;

    const-string v2, "license.dat"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 68
    sput-object v1, Lcom/kms/license/legacy/License;->c:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    sput-object v1, Lcom/kms/license/legacy/License;->mStorageFdWrite:Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    const/4 v0, 0x1

    .line 81
    :goto_0
    return v0

    .line 71
    :catch_0
    move-exception v1

    .line 74
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 76
    :catch_1
    move-exception v1

    .line 79
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method protected static native removeLicense(I)V
.end method

.method protected static native replaceLicenseFromBuffer([BI)V
.end method
