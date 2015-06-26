.class final LmG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:[Lcom/kms/antivirus/AntivirusScanType;

.field private synthetic b:LmF;


# direct methods
.method constructor <init>(LmF;[Lcom/kms/antivirus/AntivirusScanType;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, LmG;->b:LmF;

    iput-object p2, p0, LmG;->a:[Lcom/kms/antivirus/AntivirusScanType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 47
    invoke-static {}, LjJ;->b()Lrx;

    move-result-object v0

    iget-object v1, p0, LmG;->a:[Lcom/kms/antivirus/AntivirusScanType;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/kms/antivirus/AntivirusScanType;->createScanEvent()Lkk;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx;->a(Lrw;)V

    .line 48
    iget-object v0, p0, LmG;->b:LmF;

    invoke-virtual {v0}, LmF;->dismiss()V

    .line 49
    return-void
.end method
