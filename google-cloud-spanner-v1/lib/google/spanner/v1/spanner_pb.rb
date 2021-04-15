# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/spanner/v1/spanner.proto

require 'google/protobuf'

require 'google/spanner/v1/commit_response_pb'
require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/struct_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'
require 'google/spanner/v1/keys_pb'
require 'google/spanner/v1/mutation_pb'
require 'google/spanner/v1/result_set_pb'
require 'google/spanner/v1/transaction_pb'
require 'google/spanner/v1/type_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/spanner/v1/spanner.proto", :syntax => :proto3) do
    add_message "google.spanner.v1.CreateSessionRequest" do
      optional :database, :string, 1
      optional :session, :message, 2, "google.spanner.v1.Session"
    end
    add_message "google.spanner.v1.BatchCreateSessionsRequest" do
      optional :database, :string, 1
      optional :session_template, :message, 2, "google.spanner.v1.Session"
      optional :session_count, :int32, 3
    end
    add_message "google.spanner.v1.BatchCreateSessionsResponse" do
      repeated :session, :message, 1, "google.spanner.v1.Session"
    end
    add_message "google.spanner.v1.Session" do
      optional :name, :string, 1
      map :labels, :string, :string, 2
      optional :create_time, :message, 3, "google.protobuf.Timestamp"
      optional :approximate_last_use_time, :message, 4, "google.protobuf.Timestamp"
    end
    add_message "google.spanner.v1.GetSessionRequest" do
      optional :name, :string, 1
    end
    add_message "google.spanner.v1.ListSessionsRequest" do
      optional :database, :string, 1
      optional :page_size, :int32, 2
      optional :page_token, :string, 3
      optional :filter, :string, 4
    end
    add_message "google.spanner.v1.ListSessionsResponse" do
      repeated :sessions, :message, 1, "google.spanner.v1.Session"
      optional :next_page_token, :string, 2
    end
    add_message "google.spanner.v1.DeleteSessionRequest" do
      optional :name, :string, 1
    end
    add_message "google.spanner.v1.RequestOptions" do
      optional :priority, :enum, 1, "google.spanner.v1.RequestOptions.Priority"
      optional :request_tag, :string, 2
      optional :transaction_tag, :string, 3
    end
    add_enum "google.spanner.v1.RequestOptions.Priority" do
      value :PRIORITY_UNSPECIFIED, 0
      value :PRIORITY_LOW, 1
      value :PRIORITY_MEDIUM, 2
      value :PRIORITY_HIGH, 3
    end
    add_message "google.spanner.v1.ExecuteSqlRequest" do
      optional :session, :string, 1
      optional :transaction, :message, 2, "google.spanner.v1.TransactionSelector"
      optional :sql, :string, 3
      optional :params, :message, 4, "google.protobuf.Struct"
      map :param_types, :string, :message, 5, "google.spanner.v1.Type"
      optional :resume_token, :bytes, 6
      optional :query_mode, :enum, 7, "google.spanner.v1.ExecuteSqlRequest.QueryMode"
      optional :partition_token, :bytes, 8
      optional :seqno, :int64, 9
      optional :query_options, :message, 10, "google.spanner.v1.ExecuteSqlRequest.QueryOptions"
      optional :request_options, :message, 11, "google.spanner.v1.RequestOptions"
    end
    add_message "google.spanner.v1.ExecuteSqlRequest.QueryOptions" do
      optional :optimizer_version, :string, 1
      optional :optimizer_statistics_package, :string, 2
    end
    add_enum "google.spanner.v1.ExecuteSqlRequest.QueryMode" do
      value :NORMAL, 0
      value :PLAN, 1
      value :PROFILE, 2
    end
    add_message "google.spanner.v1.ExecuteBatchDmlRequest" do
      optional :session, :string, 1
      optional :transaction, :message, 2, "google.spanner.v1.TransactionSelector"
      repeated :statements, :message, 3, "google.spanner.v1.ExecuteBatchDmlRequest.Statement"
      optional :seqno, :int64, 4
      optional :request_options, :message, 5, "google.spanner.v1.RequestOptions"
    end
    add_message "google.spanner.v1.ExecuteBatchDmlRequest.Statement" do
      optional :sql, :string, 1
      optional :params, :message, 2, "google.protobuf.Struct"
      map :param_types, :string, :message, 3, "google.spanner.v1.Type"
    end
    add_message "google.spanner.v1.ExecuteBatchDmlResponse" do
      repeated :result_sets, :message, 1, "google.spanner.v1.ResultSet"
      optional :status, :message, 2, "google.rpc.Status"
    end
    add_message "google.spanner.v1.PartitionOptions" do
      optional :partition_size_bytes, :int64, 1
      optional :max_partitions, :int64, 2
    end
    add_message "google.spanner.v1.PartitionQueryRequest" do
      optional :session, :string, 1
      optional :transaction, :message, 2, "google.spanner.v1.TransactionSelector"
      optional :sql, :string, 3
      optional :params, :message, 4, "google.protobuf.Struct"
      map :param_types, :string, :message, 5, "google.spanner.v1.Type"
      optional :partition_options, :message, 6, "google.spanner.v1.PartitionOptions"
    end
    add_message "google.spanner.v1.PartitionReadRequest" do
      optional :session, :string, 1
      optional :transaction, :message, 2, "google.spanner.v1.TransactionSelector"
      optional :table, :string, 3
      optional :index, :string, 4
      repeated :columns, :string, 5
      optional :key_set, :message, 6, "google.spanner.v1.KeySet"
      optional :partition_options, :message, 9, "google.spanner.v1.PartitionOptions"
    end
    add_message "google.spanner.v1.Partition" do
      optional :partition_token, :bytes, 1
    end
    add_message "google.spanner.v1.PartitionResponse" do
      repeated :partitions, :message, 1, "google.spanner.v1.Partition"
      optional :transaction, :message, 2, "google.spanner.v1.Transaction"
    end
    add_message "google.spanner.v1.ReadRequest" do
      optional :session, :string, 1
      optional :transaction, :message, 2, "google.spanner.v1.TransactionSelector"
      optional :table, :string, 3
      optional :index, :string, 4
      repeated :columns, :string, 5
      optional :key_set, :message, 6, "google.spanner.v1.KeySet"
      optional :limit, :int64, 8
      optional :resume_token, :bytes, 9
      optional :partition_token, :bytes, 10
      optional :request_options, :message, 11, "google.spanner.v1.RequestOptions"
    end
    add_message "google.spanner.v1.BeginTransactionRequest" do
      optional :session, :string, 1
      optional :options, :message, 2, "google.spanner.v1.TransactionOptions"
      optional :request_options, :message, 3, "google.spanner.v1.RequestOptions"
    end
    add_message "google.spanner.v1.CommitRequest" do
      optional :session, :string, 1
      repeated :mutations, :message, 4, "google.spanner.v1.Mutation"
      optional :return_commit_stats, :bool, 5
      optional :request_options, :message, 6, "google.spanner.v1.RequestOptions"
      oneof :transaction do
        optional :transaction_id, :bytes, 2
        optional :single_use_transaction, :message, 3, "google.spanner.v1.TransactionOptions"
      end
    end
    add_message "google.spanner.v1.RollbackRequest" do
      optional :session, :string, 1
      optional :transaction_id, :bytes, 2
    end
  end
end

module Google
  module Cloud
    module Spanner
      module V1
        CreateSessionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.CreateSessionRequest").msgclass
        BatchCreateSessionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.BatchCreateSessionsRequest").msgclass
        BatchCreateSessionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.BatchCreateSessionsResponse").msgclass
        Session = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.Session").msgclass
        GetSessionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.GetSessionRequest").msgclass
        ListSessionsRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.ListSessionsRequest").msgclass
        ListSessionsResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.ListSessionsResponse").msgclass
        DeleteSessionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.DeleteSessionRequest").msgclass
        RequestOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.RequestOptions").msgclass
        RequestOptions::Priority = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.RequestOptions.Priority").enummodule
        ExecuteSqlRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.ExecuteSqlRequest").msgclass
        ExecuteSqlRequest::QueryOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.ExecuteSqlRequest.QueryOptions").msgclass
        ExecuteSqlRequest::QueryMode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.ExecuteSqlRequest.QueryMode").enummodule
        ExecuteBatchDmlRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.ExecuteBatchDmlRequest").msgclass
        ExecuteBatchDmlRequest::Statement = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.ExecuteBatchDmlRequest.Statement").msgclass
        ExecuteBatchDmlResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.ExecuteBatchDmlResponse").msgclass
        PartitionOptions = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.PartitionOptions").msgclass
        PartitionQueryRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.PartitionQueryRequest").msgclass
        PartitionReadRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.PartitionReadRequest").msgclass
        Partition = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.Partition").msgclass
        PartitionResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.PartitionResponse").msgclass
        ReadRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.ReadRequest").msgclass
        BeginTransactionRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.BeginTransactionRequest").msgclass
        CommitRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.CommitRequest").msgclass
        RollbackRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.spanner.v1.RollbackRequest").msgclass
      end
    end
  end
end
