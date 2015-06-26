.class public final LeD;
.super LeH;
.source "SourceFile"


# instance fields
.field private c:Lcom/amazonaws/services/s3/transfer/TransferManager;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/List;

.field private f:[Ljava/lang/String;

.field private g:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;LaU;)V
    .locals 4

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, LeH;-><init>(Lcom/kaspersky/kts/antitheft/ucp/UcpAction;LaU;)V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LeD;->d:Ljava/lang/Object;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LeD;->e:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LeD;->g:Ljava/util/List;

    .line 42
    new-instance v0, Lcom/amazonaws/auth/BasicSessionCredentials;

    invoke-virtual {p1}, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->getAccessKeyId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->getSecretAccessKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/amazonaws/auth/BasicSessionCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v1, Lcom/amazonaws/services/s3/transfer/TransferManager;

    invoke-direct {v1, v0}, Lcom/amazonaws/services/s3/transfer/TransferManager;-><init>(Lcom/amazonaws/auth/AWSCredentials;)V

    iput-object v1, p0, LeD;->c:Lcom/amazonaws/services/s3/transfer/TransferManager;

    .line 47
    return-void
.end method

.method private a(LeC;)V
    .locals 8

    .prologue
    .line 66
    iget-object v0, p0, LeD;->a:Lcom/kaspersky/kts/antitheft/ucp/UcpAction;

    check-cast v0, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;

    .line 68
    invoke-static {p1}, LeD;->b(LeC;)Ljava/io/File;

    move-result-object v1

    .line 70
    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->getBucketName()Ljava/lang/String;

    move-result-object v2

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->getKeyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    iget-object v4, p0, LeD;->c:Lcom/amazonaws/services/s3/transfer/TransferManager;

    invoke-virtual {v4, v2, v3, v1}, Lcom/amazonaws/services/s3/transfer/TransferManager;->upload(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Lcom/amazonaws/services/s3/transfer/Upload;

    move-result-object v2

    .line 75
    const-string v3, "KMS-ANTI-THIEF"

    const-string v4, "File %s Transfer: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-interface {v2}, Lcom/amazonaws/services/s3/transfer/Transfer;->getDescription()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v3, "KMS-ANTI-THIEF"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  - State: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazonaws/services/s3/transfer/Transfer;->getState()Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string v3, "KMS-ANTI-THIEF"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  - Progress: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazonaws/services/s3/transfer/Transfer;->getProgress()Lcom/amazonaws/services/s3/transfer/TransferProgress;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazonaws/services/s3/transfer/TransferProgress;->getBytesTransfered()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v3, p0, LeD;->d:Ljava/lang/Object;

    monitor-enter v3

    .line 80
    :try_start_0
    iget-object v4, p0, LeD;->e:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v2, p0, LeD;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v1, p0, LeD;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->getPhotoCount()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 86
    invoke-direct {p0}, LeD;->e()V

    .line 88
    :cond_0
    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method private static b(LeC;)Ljava/io/File;
    .locals 5

    .prologue
    .line 91
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%d.jpeg"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, LeC;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 92
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lwy;->e()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, LeC;->b()[B

    move-result-object v0

    invoke-static {v0, v1}, Lbr;->a([BLjava/io/File;)V

    .line 94
    return-object v1
.end method

.method private e()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 104
    .line 106
    :try_start_0
    const-string v0, "KMS-ANTI-THIEF"

    const-string v1, "Start catching Amazon exception"

    invoke-static {v0, v1}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    move-object v1, v5

    .line 108
    :goto_0
    iget-object v0, p0, LeD;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 109
    iget-object v0, p0, LeD;->e:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/services/s3/transfer/Transfer;

    .line 110
    invoke-interface {v0}, Lcom/amazonaws/services/s3/transfer/Transfer;->getState()Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    move-result-object v6

    .line 111
    const-string v7, "KMS-ANTI-THIEF"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Upload state: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget-object v7, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Completed:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    if-eq v6, v7, :cond_0

    .line 114
    invoke-interface {v0}, Lcom/amazonaws/services/s3/transfer/Transfer;->waitForCompletion()V

    .line 115
    invoke-interface {v0}, Lcom/amazonaws/services/s3/transfer/Transfer;->getState()Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    move-result-object v6

    .line 116
    invoke-interface {v0}, Lcom/amazonaws/services/s3/transfer/Transfer;->getState()Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    move-result-object v0

    sget-object v7, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->Completed:Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    if-eq v0, v7, :cond_0

    .line 118
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 121
    const-string v0, "KMS-ANTI-THIEF"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Final upload state: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "KMS-ANTI-THIEF"

    const-string v6, "Shit happens! Cannot upload photos. Send fail result."

    invoke-static {v0, v6}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_0
    iget-object v0, p0, LeD;->g:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 128
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v6

    .line 130
    const-string v7, "KMS-ANTI-THIEF"

    const-string v8, "Deleted [%s], file [%s]"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    if-eqz v6, :cond_1

    const-string v6, "true"

    :goto_1
    aput-object v6, v9, v10

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_0

    .line 130
    :cond_1
    const-string v6, "false"

    goto :goto_1

    .line 134
    :cond_2
    iget-object v0, p0, LeD;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 135
    iget-object v0, p0, LeD;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, LeD;->f:[Ljava/lang/String;

    .line 138
    const-string v0, "KMS-ANTI-THIEF"

    const-string v4, "Now all photos successful uploaded to Amazon"

    invoke-static {v0, v4}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazonaws/AmazonServiceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :try_start_1
    iget-object v0, p0, LeD;->c:Lcom/amazonaws/services/s3/transfer/TransferManager;

    invoke-virtual {v0}, Lcom/amazonaws/services/s3/transfer/TransferManager;->shutdownNow()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, LeD;->c:Lcom/amazonaws/services/s3/transfer/TransferManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 161
    :goto_2
    const-string v1, "KMS-ANTI-THIEF"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Remained files to upload: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, LeD;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kms/kmsshared/KMSLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, LeD;->a:Lcom/kaspersky/kts/antitheft/ucp/UcpAction;

    invoke-virtual {v1}, Lcom/kaspersky/kts/antitheft/ucp/UcpAction;->getActionId()Ljava/lang/String;

    move-result-object v1

    .line 165
    if-nez v0, :cond_4

    .line 166
    iget-object v0, p0, LeD;->b:LaU;

    invoke-interface {v0, v1}, LaU;->reportCommandSucced(Ljava/lang/String;)V

    .line 168
    :goto_3
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 159
    goto :goto_2

    .line 140
    :catch_1
    move-exception v0

    .line 141
    :try_start_2
    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->printStackTrace()V

    .line 142
    invoke-virtual {v0}, Lcom/amazonaws/AmazonServiceException;->getStatusCode()I

    move-result v0

    .line 143
    const/16 v1, 0x1f7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x1f4

    if-eq v0, v1, :cond_3

    const/16 v1, 0x198

    if-eq v0, v1, :cond_3

    move v0, v2

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 154
    :try_start_3
    iget-object v1, p0, LeD;->c:Lcom/amazonaws/services/s3/transfer/TransferManager;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/transfer/TransferManager;->shutdownNow()V

    .line 155
    const/4 v1, 0x0

    iput-object v1, p0, LeD;->c:Lcom/amazonaws/services/s3/transfer/TransferManager;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 156
    :catch_2
    move-exception v1

    .line 157
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_3
    move v0, v3

    .line 143
    goto :goto_4

    .line 146
    :catch_3
    move-exception v0

    .line 147
    :try_start_4
    invoke-virtual {v0}, Lcom/amazonaws/AmazonClientException;->printStackTrace()V

    .line 148
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 154
    :try_start_5
    iget-object v1, p0, LeD;->c:Lcom/amazonaws/services/s3/transfer/TransferManager;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/transfer/TransferManager;->shutdownNow()V

    .line 155
    const/4 v1, 0x0

    iput-object v1, p0, LeD;->c:Lcom/amazonaws/services/s3/transfer/TransferManager;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_2

    .line 156
    :catch_4
    move-exception v1

    .line 157
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 149
    :catch_5
    move-exception v0

    .line 150
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 151
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    .line 154
    :try_start_7
    iget-object v1, p0, LeD;->c:Lcom/amazonaws/services/s3/transfer/TransferManager;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/transfer/TransferManager;->shutdownNow()V

    .line 155
    const/4 v1, 0x0

    iput-object v1, p0, LeD;->c:Lcom/amazonaws/services/s3/transfer/TransferManager;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_2

    .line 156
    :catch_6
    move-exception v1

    .line 157
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 153
    :catchall_0
    move-exception v0

    .line 154
    :try_start_8
    iget-object v1, p0, LeD;->c:Lcom/amazonaws/services/s3/transfer/TransferManager;

    invoke-virtual {v1}, Lcom/amazonaws/services/s3/transfer/TransferManager;->shutdownNow()V

    .line 155
    const/4 v1, 0x0

    iput-object v1, p0, LeD;->c:Lcom/amazonaws/services/s3/transfer/TransferManager;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 158
    :goto_5
    throw v0

    .line 156
    :catch_7
    move-exception v1

    .line 157
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 167
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 168
    iget-object v0, p0, LeD;->b:LaU;

    sget-object v2, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorMakingPhotoUploadFailed:Lcom/kaspersky/components/ucp/UcpCommandError;

    invoke-interface {v0, v1, v2, v5}, LaU;->a(Ljava/lang/String;Lcom/kaspersky/components/ucp/UcpCommandError;Ljava/lang/String;)V

    goto :goto_3

    .line 170
    :cond_5
    new-instance v0, Lcom/kaspersky/kts/antitheft/ConnectionProblemException;

    invoke-direct {v0}, Lcom/kaspersky/kts/antitheft/ConnectionProblemException;-><init>()V

    throw v0
.end method

.method private f()V
    .locals 6

    .prologue
    .line 233
    iget-object v1, p0, LeD;->f:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 234
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lwy;->e()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, LeD;->f:[Ljava/lang/String;

    .line 237
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    .line 177
    iget-object v0, p0, LeD;->a:Lcom/kaspersky/kts/antitheft/ucp/UcpAction;

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/ucp/UcpAction;->getActionName()Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    move-result-object v0

    sget-object v1, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->GetPhotoFromDevice:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    if-ne v0, v1, :cond_1

    .line 178
    iget-object v0, p0, LeD;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 179
    iget-object v0, p0, LeD;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 181
    iget-object v1, p0, LeD;->f:[Ljava/lang/String;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 182
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lwy;->e()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 183
    iget-object v3, p0, LeD;->g:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    const-string v3, "KMS-ANTI-THIEF"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Start file upload: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, LeD;->a:Lcom/kaspersky/kts/antitheft/ucp/UcpAction;

    check-cast v0, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;

    .line 189
    iget-object v1, p0, LeD;->c:Lcom/amazonaws/services/s3/transfer/TransferManager;

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->getBucketName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->getKeyName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lwy;->e()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, LeD;->g:Ljava/util/List;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/amazonaws/services/s3/transfer/TransferManager;->uploadFileList(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/util/List;)Lcom/amazonaws/services/s3/transfer/MultipleFileUpload;

    move-result-object v0

    .line 191
    const-string v1, "KMS-ANTI-THIEF"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MultipleFileUpload Transfer: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazonaws/services/s3/transfer/MultipleFileUpload;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v1, "KMS-ANTI-THIEF"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  - State: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazonaws/services/s3/transfer/MultipleFileUpload;->getState()Lcom/amazonaws/services/s3/transfer/Transfer$TransferState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v1, "KMS-ANTI-THIEF"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  - Progress: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazonaws/services/s3/transfer/MultipleFileUpload;->getProgress()Lcom/amazonaws/services/s3/transfer/TransferProgress;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazonaws/services/s3/transfer/TransferProgress;->getBytesTransfered()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v1, p0, LeD;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-direct {p0}, LeD;->e()V

    .line 199
    :cond_1
    return-void
.end method

.method public final a(Lee;)V
    .locals 5

    .prologue
    .line 51
    invoke-interface {p1}, Lee;->d()I

    move-result v1

    if-nez v1, :cond_0

    .line 53
    :try_start_0
    move-object v0, p1

    check-cast v0, LeC;

    move-object v1, v0

    invoke-direct {p0, v1}, LeD;->a(LeC;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v1

    .line 55
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 56
    iget-object v1, p0, LeD;->b:LaU;

    invoke-interface {p1}, Lee;->c()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/kaspersky/components/ucp/UcpCommandError;->ErrorMakingPhoto:Lcom/kaspersky/components/ucp/UcpCommandError;

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, LaU;->a(Ljava/lang/String;Lcom/kaspersky/components/ucp/UcpCommandError;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0, p1}, LeD;->b(Lee;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 203
    .line 204
    iget-object v0, p0, LeD;->a:Lcom/kaspersky/kts/antitheft/ucp/UcpAction;

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/ucp/UcpAction;->getActionName()Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    move-result-object v0

    sget-object v2, Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;->GetPhotoFromDevice:Lcom/kaspersky/kts/antitheft/remoting/AntiThiefCommandType;

    if-ne v0, v2, :cond_0

    .line 206
    iget-object v0, p0, LeD;->a:Lcom/kaspersky/kts/antitheft/ucp/UcpAction;

    check-cast v0, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;

    .line 208
    invoke-static {}, Lwy;->e()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LeD;->f:[Ljava/lang/String;

    .line 210
    iget-object v2, p0, LeD;->f:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    .line 211
    :goto_0
    if-eqz v2, :cond_3

    .line 213
    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->isNew()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 216
    invoke-direct {p0}, LeD;->f()V

    .line 227
    :goto_1
    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->setOld()V

    .line 229
    :cond_0
    return v1

    :cond_1
    move v2, v1

    .line 210
    goto :goto_0

    .line 220
    :cond_2
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->getCreationDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 221
    const-wide/32 v5, 0x36ee80

    cmp-long v3, v5, v3

    if-gez v3, :cond_3

    .line 223
    invoke-direct {p0}, LeD;->f()V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public final c()Z
    .locals 5

    .prologue
    .line 241
    iget-object v0, p0, LeD;->a:Lcom/kaspersky/kts/antitheft/ucp/UcpAction;

    check-cast v0, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;

    .line 242
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->getCreationDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long v0, v1, v3

    .line 243
    const-wide/32 v2, 0x36ee80

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, LeD;->a:Lcom/kaspersky/kts/antitheft/ucp/UcpAction;

    check-cast v0, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;

    .line 249
    invoke-virtual {v0}, Lcom/kaspersky/kts/antitheft/ucp/MugshotUcpAction;->isNew()Z

    move-result v0

    return v0
.end method
